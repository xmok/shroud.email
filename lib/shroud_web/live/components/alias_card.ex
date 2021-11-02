defmodule ShroudWeb.Components.AliasCard do
  use Phoenix.HTML
  use ShroudWeb, :live_component

  @impl true
  def render(assigns) do
    ~H"""
    <article id={"alias-#{@email_alias.id}"} class="card bordered">
      <div class="card-body flex flex-row justify-between">
        <div class="font-bold text-lg"><%= @email_alias.address %></div>
        <%= link "Delete", to: "#", phx_click: "delete", phx_target: @myself, data: [confirm: "Are you sure you want to permanently delete #{@email_alias.address}?"], class: "btn btn-outline btn-xs btn-error" %>
      </div>
    </article>
    """
  end

  @impl true
  def handle_event("delete", _params, socket) do
    send(self(), {:deleted_alias, socket.assigns.email_alias.id})
    {:noreply, socket}
  end
end