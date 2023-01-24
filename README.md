# 🚆 🛤️ Ant Design on Rails

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

## Contributing

All contributions are welcome and greatly appreciated! 🙇

- Use [Ant Design on Rails](https://github.com/pmq20/ant-design-rails/) in your next project.
- Submit [issues](https://github.com/pmq20/ant-design-rails/issues) to report bugs.
- Propose [pull requests](https://github.com/pmq20/ant-design-rails/pulls) to improve the code.
