FROM caddy:2.6.2-builder AS builder

RUN xcaddy build \
    --with github.com/abiosoft/caddy-yaml@64fbdd07cf02bf7cdb227bae3017ca7251f25c18 \
    --with github.com/mholt/caddy-l4@1c1f62d5c914f6e7dd417c4d6e238cebb72b78a1

FROM caddy:2.6.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy