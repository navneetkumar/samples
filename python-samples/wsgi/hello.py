from webob import Request
from webob import Response


def wsgi_app(a):
    def wrapper(environ, start_response):
        request = Request(environ)
        response = a(request)
        return response(environ, start_response)
    return wrapper


@wsgi_app
def app(request):
    body = html % (dict_to_string(request.params),
                   dict_to_string(request.environ))

    return Response(body=body,
                    headerlist=[
                        ("Content-type", "text/html"),
                        ("Content-length", str(len(body))),
                        ])


if __name__ == '__main__':
    from wsgiref.simple_server import make_server
    server = make_server('localhost', 8080, application)
    server.serve_forever()
