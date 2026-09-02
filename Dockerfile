# Bridges stdio MCP clients (and Glama's inspection) to the hosted HiBot
# public endpoint via mcp-remote. There is no local server to run; the real
# server is the hosted Streamable HTTP endpoint at https://hibot.com/mcp/public
FROM node:22-alpine
RUN npm install -g mcp-remote
ENTRYPOINT ["mcp-remote", "https://hibot.com/mcp/public"]
