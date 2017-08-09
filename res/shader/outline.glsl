vec4 resultCol;

vec4 effect( vec4 col, Image texture, vec2 texturePos, vec2 screenPos )
{
	number alpha = 4 * texture2D( texture, texturePos ).a;
	vec2 stepSize = vec2(0.02f, 0.01f);
	alpha -= texture2D( texture, texturePos + vec2( stepSize.x, 0.0f ) ).a;
	alpha -= texture2D( texture, texturePos + vec2( -stepSize.x, 0.0f ) ).a;
	alpha -= texture2D( texture, texturePos + vec2( 0.0f, stepSize.y ) ).a;
	alpha -= texture2D( texture, texturePos + vec2( 0.0f, -stepSize.y ) ).a;

	resultCol = vec4( 1.0f, 1.0f, 1.0f, alpha );
	//resultCol = vec4( 0.0f, 0.0f, 0.0f, alpha );
	return resultCol;
}
