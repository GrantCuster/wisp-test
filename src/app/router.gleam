import app/pages
import app/pages/layout
import app/web
// import gleam/string_tree
import lustre/element
import wisp.{type Request, type Response}

/// The HTTP request handler- your application!
pub fn handle_request(req: Request, ctx: web.Context) -> Response {
  // Apply the middleware stack for this request/response.
  use _req <- web.middleware(req, ctx)

  // Later we'll use templates, but for now a string will do.
  // let body = string_tree.from_string("Hello, Grant!")

  [pages.home()]
  |> layout.layout
  |> element.to_document_string_builder
  |> wisp.html_response(200)
}
