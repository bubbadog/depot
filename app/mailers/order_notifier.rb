# class OrderNotifier < ActionMailer::Base
#   default from: 'admin <daddycanyougetmyball@gmail.com>'
#
#   # Subject can be set in your I18n file at config/locales/en.yml
#   # with the following lookup:
#   #
#   #   en.order_notifier.received.subject
#   #
#   def received(order)
#     @order = order
#
#     mail(to: "justin.karbowski@gmail.com", subject: 'Pragmatic Store Order Confirmation')
#   end
#
#   # Subject can be set in your I18n file at config/locales/en.yml
#   # with the following lookup:
#   #
#   #   en.order_notifier.shipped.subject
#   #
#   def shipped(order)
#     @order = order
#
#     mail(to: @order.email, subject: 'Pragmatic Store Order Shipped')
#   end
# end

class OrderNotifier < ActionMailer::Base
  default from: 'Sam Ruby <depot@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
