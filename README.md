# 🚆 🛤️ Ant Design on Rails

[![Gem Version](https://badge.fury.io/rb/ant-design-rails.svg)](https://badge.fury.io/rb/ant-design-rails)

Pairing world's best backend framework with the best frontend framework, without wrapping everything in API!

- **[Ruby on Rails](https://rubyonrails.org/)**: the web-app framework that includes everything needed to create database-backed web applications.
- **[Ant Design Pro](https://pro.ant.design/)**: out-of-box UI solution for enterprise applications based on React.

## Development

Install backend dependencies:

```bash
bundle
```

Install frontend dependencies:

```bash
yarn
```

Prepare the database ([PostgreSQL](https://www.postgresql.org/) by default):

```bash
bin/rails db:prepare
```

Start the backend development server at port `3000`:

```bash
bin/rails server
```

Start the frontend development server at port `8000`:

```bash
yarn dev
```

Access http://localhost:8000 and start hacking! 👨🏻‍💻👩🏻‍💻

## Deployment

Upload Nginx configurations:

```bash
bundle exec cap production puma:nginx_config
```

Set up systemd components for the Puma web server:

```bash
bundle exec cap production puma:systemd:config
```

Handle both frontend and backend deployment in a single command:

```bash
bundle exec cap production deploy
```

Then access your production server. See https://ant-design-rails.minqi-pan.com/ for an example deployment.

## Contributing

All contributions are welcome and greatly appreciated! 🙇

- Use [Ant Design on Rails](https://github.com/pmq20/ant-design-rails/) in your next project.
- Submit [issues](https://github.com/pmq20/ant-design-rails/issues) to report bugs.
- Propose [pull requests](https://github.com/pmq20/ant-design-rails/pulls) to improve the code.
- Contribute to [Rails](https://github.com/rails/rails) and [Ant Design Pro](https://github.com/ant-design/ant-design-pro/).
