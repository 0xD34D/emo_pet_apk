package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import javax.annotation.Nullable;
import retrofit2.CallAdapter;
/* loaded from: classes.dex */
final class CompletableFutureCallAdapterFactory extends CallAdapter.Factory {
    static final CallAdapter.Factory INSTANCE = new CompletableFutureCallAdapterFactory();

    CompletableFutureCallAdapterFactory() {
    }

    @Override // retrofit2.CallAdapter.Factory
    @Nullable
    public CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (getRawType(type) != CompletableFuture.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type parameterUpperBound = getParameterUpperBound(0, (ParameterizedType) type);
            if (getRawType(parameterUpperBound) != Response.class) {
                return new BodyCallAdapter(parameterUpperBound);
            }
            if (parameterUpperBound instanceof ParameterizedType) {
                return new ResponseCallAdapter(getParameterUpperBound(0, (ParameterizedType) parameterUpperBound));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }

    /* loaded from: classes.dex */
    private static final class BodyCallAdapter<R> implements CallAdapter<R, CompletableFuture<R>> {
        private final Type responseType;

        BodyCallAdapter(Type type) {
            this.responseType = type;
        }

        @Override // retrofit2.CallAdapter
        public Type responseType() {
            return this.responseType;
        }

        @Override // retrofit2.CallAdapter
        public CompletableFuture<R> adapt(final Call<R> call) {
            final CompletableFuture<R> completableFuture = new CompletableFuture<R>() { // from class: retrofit2.CompletableFutureCallAdapterFactory.BodyCallAdapter.1
                @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
                public boolean cancel(boolean z) {
                    if (z) {
                        call.cancel();
                    }
                    return super.cancel(z);
                }
            };
            call.enqueue(new Callback<R>() { // from class: retrofit2.CompletableFutureCallAdapterFactory.BodyCallAdapter.2
                @Override // retrofit2.Callback
                public void onResponse(Call<R> call2, Response<R> response) {
                    if (response.isSuccessful()) {
                        completableFuture.complete(response.body());
                    } else {
                        completableFuture.completeExceptionally(new HttpException(response));
                    }
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<R> call2, Throwable th) {
                    completableFuture.completeExceptionally(th);
                }
            });
            return completableFuture;
        }
    }

    /* loaded from: classes.dex */
    private static final class ResponseCallAdapter<R> implements CallAdapter<R, CompletableFuture<Response<R>>> {
        private final Type responseType;

        ResponseCallAdapter(Type type) {
            this.responseType = type;
        }

        @Override // retrofit2.CallAdapter
        public Type responseType() {
            return this.responseType;
        }

        @Override // retrofit2.CallAdapter
        public CompletableFuture<Response<R>> adapt(final Call<R> call) {
            final CompletableFuture<Response<R>> completableFuture = new CompletableFuture<Response<R>>() { // from class: retrofit2.CompletableFutureCallAdapterFactory.ResponseCallAdapter.1
                @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
                public boolean cancel(boolean z) {
                    if (z) {
                        call.cancel();
                    }
                    return super.cancel(z);
                }
            };
            call.enqueue(new Callback<R>() { // from class: retrofit2.CompletableFutureCallAdapterFactory.ResponseCallAdapter.2
                @Override // retrofit2.Callback
                public void onResponse(Call<R> call2, Response<R> response) {
                    completableFuture.complete(response);
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<R> call2, Throwable th) {
                    completableFuture.completeExceptionally(th);
                }
            });
            return completableFuture;
        }
    }
}
