
class NoNumberMiddleware

  attr_reader :sinatraApp

  def iniitalize(app)
    @sinatraApp = app
  end

  def call(env)
    body = sinatraApp.call(env)
    puts body
    new_body = body.gsub(/\d/,'x')
    [new_body]
  end

end
