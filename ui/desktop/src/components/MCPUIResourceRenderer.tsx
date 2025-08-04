// Temporarily disabled due to @mcp-ui/client build issues
// import { UIResourceRenderer, UIActionResult } from '@mcp-ui/client';
import { ResourceContent } from '../types/message';

interface MCPUIResourceRendererProps {
  content: ResourceContent;
}

export default function MCPUIResourceRenderer({ content }: MCPUIResourceRendererProps) {
  console.log('MCPUIResourceRenderer', content);

  return (
    <div className="mt-3 p-4 border border-borderSubtle rounded-lg bg-background-muted">
      <div className="overflow-hidden rounded-sm">
        {/* Temporarily disabled due to @mcp-ui/client build issues */}
        <div className="p-4 text-center text-text-muted">
          <p>MCP UI Resource Renderer temporarily unavailable</p>
          <p className="text-sm">Package @mcp-ui/client has build issues</p>
        </div>
      </div>
    </div>
  );
}
