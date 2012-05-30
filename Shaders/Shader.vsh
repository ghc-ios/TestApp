//
//  Shader.vsh
//  TestApp
//
//  Created by Stephen Blackheath on 11/04/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

attribute vec4 position;
attribute vec4 color;

varying vec4 colorVarying;

uniform float translate;

void main()
{
    gl_Position = position;
    gl_Position.y += sin(translate) / 2.0;

    colorVarying = color;
}
