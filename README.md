# 🥷 Shroud

Shroud is an email privacy service.

## To do

- [ ] Handle attachments
- [ ] Limit number of aliases (5?)
- [ ] Custom aliases (pro)
- [ ] Simple spam checks before forwarding? (rspamd integration)
- [ ] Remove trackers
- [ ] Ensure randoms can't send emails
- [ ] Ensure backscatter prevented
- [ ] Replies
- [ ] One-click blocking
- [ ] Scheduling

## Contributing

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

To send test emails, use e.g. [Swaks](https://www.jetmore.org/john/code/swaks/):
```
swaks --to test@example.com --server 127.0.0.1 --port 2525
```

## Libraries

- [DaisyUI](https://daisyui.com/) for basic styles
- [gen_smtp](https://github.com/gen-smtp/gen_smtp) for receiving emails
- [Swoosh](https://hexdocs.pm/swoosh/Swoosh.html) for sending emails

## Useful links

- http://reganmian.net/blog/2015/09/03/sending-and-receiving-email-with-elixir/
- https://blog.ohmysmtp.com/blog/how-to-catch-spam-with-rspamd/

# Deploying

Set the following environment variables:
- `SECRET_KEY_BASE` (generate using `mix phx.gen.secret`)
- `DATABASE_URL`
- `OH_MY_SMTP_API_KEY`
