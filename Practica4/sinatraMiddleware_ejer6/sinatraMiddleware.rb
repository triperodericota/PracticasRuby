
class NoNumberMiddleware

  attr_reader :sinatraApp

  def iniitalize(app)
    @sinatraApp = app
  end

  def call(env)
    status, headers, body = sinatraApp.call(env)
    puts body
    new_body = body.gsub(/\d/,'x')
    [status, headers, new_body]
  end

end
