defmodule RedirectReproWeb.PageListLive do
  use RedirectReproWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_event("select_row", %{"id" => _}, socket) do
    {:noreply, socket}
  end
end
