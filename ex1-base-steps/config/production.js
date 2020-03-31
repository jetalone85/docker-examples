module.exports = {
  datastores: {
    default: {},
  },
  models: {
    migrate: 'safe',
  },
  blueprints: {
    shortcuts: true,
  },
  security: {
    cors: {
      allowOrigins: [
        'http://localhost',
      ]
    },
  },
  session: {
    cookie: {
      maxAge: 24 * 60 * 60 * 1000,
    },
  },
  sockets: {
    onlyAllowOrigins: [
      'http://localhost',
    ],
  },
  log: {
    level: 'silly'
  },
  http: {
    cache: 365.25 * 24 * 60 * 60 * 1000,
  },
  custom: {
    baseUrl: 'http://localhost',
    internalEmailAddress: 'support@localhost',
  },
};
