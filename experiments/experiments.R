library(forecastxgb)

fc1 <- forecast(auto.arima(AirPassengers), level = FALSE, h = 36)
accuracy(fc1)
object <- xgbts(AirPassengers, maxlag = 12)
plot(object)

fc2 <- forecast(object, h = 36)
plot(fc1)
plot(fc2)
accuracy(fc2) # looks like rather extreme overfitting!

xgb.importance(colnames(object$x), model = object$model)

fc1$mean
fc2$mean
fc2$x
fc1$x

names(fc1)

class(fc1$x)
class(fc2$x)
class(fc1$mean)
class(fc2$mean)
frequency(fc1$mean)
frequency(fc2$mean)
fc1$fitted
fc2$fitted
fc1$model
fc2$model
fc1$x
fc2$x
fc1$method
fc2$method
plot(fc1)
plot(fc2)

modnile <- xgbts(Nile, maxlag = 4)
plot(modnile)
