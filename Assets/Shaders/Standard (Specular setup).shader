Shader "_old_Standard (Specular setup)"
{
  Properties
  {
      _Color ("Color",Color) = (1,1,1,1)
      _MainTex ("Albedo",2D) = "white"{}
      _Cutoff ("Alpha Cutoff",Range(0,1)) = 0.5
      _Glossiness ("Smoothness",Range(0,1)) = 0.5
      _GlossMapScale ("Smoothness Factor",Range(0,1)) = 1
      _SpecColor ("Specular",Color) = (0.2,0.2,0.2,1)
      _SpecGlossMap ("Specular",2D) = "white"{}
      _BumpMap ("Normal Map",2D) = "bump"{}
      _Parallax ("Height Scale",Range(0.005,0.08)) = 0.02
      _ParallaxMap ("Height Map",2D) = "black"{}
      _OcclusionStrength ("Strength",Range(0,1)) = 1
      _OcclusionMap ("Occlusion",2D) = "white"{}
      _EmissionColor ("Color",Color) = (0,0,0,1)
      _EmissionMap ("Emission",2D) = "white"{}
      _DetailMask ("Detail Mask",2D) = "white"{}
      _DetailAlbedoMap ("Detail Albedo x2",2D) = "grey"{}
      _DetailNormalMap ("Normal Map",2D) = "bump"{}
  }
  SubShader
  {
      Tags
      { 
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
      }
      LOD 300
      Pass // ind: 1, name: FORWARD
      {
        Name "FORWARD"
        Tags
        { 
        "LIGHTMODE" = "FORWARDBASE"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        "SHADOWSUPPORT" = "true"
        }
        LOD 300
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile DIRECTIONAL LIGHTPROBE_SH _SPECGLOSSMAP SHADOWS_SCREEN VERTEXLIGHT_ON

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 0
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 2 for m_GpuProgramType: #5
        // m_BlobIndex: 1
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 0
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 5 for m_GpuProgramType: #4
        // m_BlobIndex: 1
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 2
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 8 for m_GpuProgramType: #5
        // m_BlobIndex: 3
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 2
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 11 for m_GpuProgramType: #4
        // m_BlobIndex: 3
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 4
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 14 for m_GpuProgramType: #5
        // m_BlobIndex: 5
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 16 for m_GpuProgramType: #4
        // m_BlobIndex: 4
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 17 for m_GpuProgramType: #4
        // m_BlobIndex: 5
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 6
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 20 for m_GpuProgramType: #5
        // m_BlobIndex: 7
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 22 for m_GpuProgramType: #4
        // m_BlobIndex: 6
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 23 for m_GpuProgramType: #4
        // m_BlobIndex: 7
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 8
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 26 for m_GpuProgramType: #5
        // m_BlobIndex: 9
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 28 for m_GpuProgramType: #4
        // m_BlobIndex: 8
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 29 for m_GpuProgramType: #4
        // m_BlobIndex: 9
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 10
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 32 for m_GpuProgramType: #5
        // m_BlobIndex: 11
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 34 for m_GpuProgramType: #4
        // m_BlobIndex: 10
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 35 for m_GpuProgramType: #4
        // m_BlobIndex: 11
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 12
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 38 for m_GpuProgramType: #5
        // m_BlobIndex: 13
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 40 for m_GpuProgramType: #4
        // m_BlobIndex: 12
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 41 for m_GpuProgramType: #4
        // m_BlobIndex: 13
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 14
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 44 for m_GpuProgramType: #5
        // m_BlobIndex: 15
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 46 for m_GpuProgramType: #4
        // m_BlobIndex: 14
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 47 for m_GpuProgramType: #4
        // m_BlobIndex: 15
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 49 for m_GpuProgramType: #5
        // m_BlobIndex: 16
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 50 for m_GpuProgramType: #5
        // m_BlobIndex: 17
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 52 for m_GpuProgramType: #4
        // m_BlobIndex: 16
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 53 for m_GpuProgramType: #4
        // m_BlobIndex: 17
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 55 for m_GpuProgramType: #5
        // m_BlobIndex: 18
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 56 for m_GpuProgramType: #5
        // m_BlobIndex: 19
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 58 for m_GpuProgramType: #4
        // m_BlobIndex: 18
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 59 for m_GpuProgramType: #4
        // m_BlobIndex: 19
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 61 for m_GpuProgramType: #5
        // m_BlobIndex: 20
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 62 for m_GpuProgramType: #5
        // m_BlobIndex: 21
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 64 for m_GpuProgramType: #4
        // m_BlobIndex: 20
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 65 for m_GpuProgramType: #4
        // m_BlobIndex: 21
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 67 for m_GpuProgramType: #5
        // m_BlobIndex: 22
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 68 for m_GpuProgramType: #5
        // m_BlobIndex: 23
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 70 for m_GpuProgramType: #4
        // m_BlobIndex: 22
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 71 for m_GpuProgramType: #4
        // m_BlobIndex: 23
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 73 for m_GpuProgramType: #5
        // m_BlobIndex: 24
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 74 for m_GpuProgramType: #5
        // m_BlobIndex: 25
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 76 for m_GpuProgramType: #4
        // m_BlobIndex: 24
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 77 for m_GpuProgramType: #4
        // m_BlobIndex: 25
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 79 for m_GpuProgramType: #5
        // m_BlobIndex: 26
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 80 for m_GpuProgramType: #5
        // m_BlobIndex: 27
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 82 for m_GpuProgramType: #4
        // m_BlobIndex: 26
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 83 for m_GpuProgramType: #4
        // m_BlobIndex: 27
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 85 for m_GpuProgramType: #5
        // m_BlobIndex: 28
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 86 for m_GpuProgramType: #5
        // m_BlobIndex: 29
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 88 for m_GpuProgramType: #4
        // m_BlobIndex: 28
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 89 for m_GpuProgramType: #4
        // m_BlobIndex: 29
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 91 for m_GpuProgramType: #5
        // m_BlobIndex: 30
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 92 for m_GpuProgramType: #5
        // m_BlobIndex: 31
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 94 for m_GpuProgramType: #4
        // m_BlobIndex: 30
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 95 for m_GpuProgramType: #4
        // m_BlobIndex: 31
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 32
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 33
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 34
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 35
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 36
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 37
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 38
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 39
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
      Pass // ind: 2, name: FORWARD_DELTA
      {
        Name "FORWARD_DELTA"
        Tags
        { 
        "LIGHTMODE" = "FORWARDADD"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        "SHADOWSUPPORT" = "true"
        }
        LOD 300
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile POINT DIRECTIONAL _SPECGLOSSMAP SPOT POINT_COOKIE DIRECTIONAL_COOKIE SHADOWS_DEPTH SHADOWS_SOFT SHADOWS_SCREEN SHADOWS_CUBE

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 40
        // m_ShaderHardwareTier: 0

#ifdef POINT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 2 for m_GpuProgramType: #5
        // m_BlobIndex: 41
        // m_ShaderHardwareTier: 1

#ifdef POINT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 40
        // m_ShaderHardwareTier: 0

#ifdef POINT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 5 for m_GpuProgramType: #4
        // m_BlobIndex: 41
        // m_ShaderHardwareTier: 1

#ifdef POINT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 42
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 8 for m_GpuProgramType: #5
        // m_BlobIndex: 43
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 42
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 11 for m_GpuProgramType: #4
        // m_BlobIndex: 43
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 44
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 14 for m_GpuProgramType: #5
        // m_BlobIndex: 45
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 16 for m_GpuProgramType: #4
        // m_BlobIndex: 44
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 17 for m_GpuProgramType: #4
        // m_BlobIndex: 45
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 46
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 20 for m_GpuProgramType: #5
        // m_BlobIndex: 47
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 22 for m_GpuProgramType: #4
        // m_BlobIndex: 46
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 23 for m_GpuProgramType: #4
        // m_BlobIndex: 47
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 48
        // m_ShaderHardwareTier: 0

#ifdef SPOT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 26 for m_GpuProgramType: #5
        // m_BlobIndex: 49
        // m_ShaderHardwareTier: 1

#ifdef SPOT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 28 for m_GpuProgramType: #4
        // m_BlobIndex: 48
        // m_ShaderHardwareTier: 0

#ifdef SPOT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 29 for m_GpuProgramType: #4
        // m_BlobIndex: 49
        // m_ShaderHardwareTier: 1

#ifdef SPOT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 50
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 32 for m_GpuProgramType: #5
        // m_BlobIndex: 51
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 34 for m_GpuProgramType: #4
        // m_BlobIndex: 50
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 35 for m_GpuProgramType: #4
        // m_BlobIndex: 51
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 52
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 38 for m_GpuProgramType: #5
        // m_BlobIndex: 53
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 40 for m_GpuProgramType: #4
        // m_BlobIndex: 52
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 41 for m_GpuProgramType: #4
        // m_BlobIndex: 53
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 54
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 44 for m_GpuProgramType: #5
        // m_BlobIndex: 55
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 46 for m_GpuProgramType: #4
        // m_BlobIndex: 54
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 47 for m_GpuProgramType: #4
        // m_BlobIndex: 55
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 49 for m_GpuProgramType: #5
        // m_BlobIndex: 56
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 50 for m_GpuProgramType: #5
        // m_BlobIndex: 57
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 52 for m_GpuProgramType: #4
        // m_BlobIndex: 56
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 53 for m_GpuProgramType: #4
        // m_BlobIndex: 57
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 55 for m_GpuProgramType: #5
        // m_BlobIndex: 58
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 56 for m_GpuProgramType: #5
        // m_BlobIndex: 59
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 58 for m_GpuProgramType: #4
        // m_BlobIndex: 58
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 59 for m_GpuProgramType: #4
        // m_BlobIndex: 59
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 61 for m_GpuProgramType: #5
        // m_BlobIndex: 60
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 62 for m_GpuProgramType: #5
        // m_BlobIndex: 61
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 64 for m_GpuProgramType: #4
        // m_BlobIndex: 60
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 65 for m_GpuProgramType: #4
        // m_BlobIndex: 61
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 67 for m_GpuProgramType: #5
        // m_BlobIndex: 62
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 68 for m_GpuProgramType: #5
        // m_BlobIndex: 63
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 70 for m_GpuProgramType: #4
        // m_BlobIndex: 62
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 71 for m_GpuProgramType: #4
        // m_BlobIndex: 63
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 73 for m_GpuProgramType: #5
        // m_BlobIndex: 64
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 74 for m_GpuProgramType: #5
        // m_BlobIndex: 65
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 76 for m_GpuProgramType: #4
        // m_BlobIndex: 64
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 77 for m_GpuProgramType: #4
        // m_BlobIndex: 65
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 79 for m_GpuProgramType: #5
        // m_BlobIndex: 66
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 80 for m_GpuProgramType: #5
        // m_BlobIndex: 67
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 82 for m_GpuProgramType: #4
        // m_BlobIndex: 66
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 83 for m_GpuProgramType: #4
        // m_BlobIndex: 67
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 85 for m_GpuProgramType: #5
        // m_BlobIndex: 68
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 86 for m_GpuProgramType: #5
        // m_BlobIndex: 69
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 88 for m_GpuProgramType: #4
        // m_BlobIndex: 68
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 89 for m_GpuProgramType: #4
        // m_BlobIndex: 69
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 91 for m_GpuProgramType: #5
        // m_BlobIndex: 70
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 92 for m_GpuProgramType: #5
        // m_BlobIndex: 71
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 94 for m_GpuProgramType: #4
        // m_BlobIndex: 70
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 95 for m_GpuProgramType: #4
        // m_BlobIndex: 71
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 97 for m_GpuProgramType: #5
        // m_BlobIndex: 72
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 98 for m_GpuProgramType: #5
        // m_BlobIndex: 73
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 100 for m_GpuProgramType: #4
        // m_BlobIndex: 72
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 101 for m_GpuProgramType: #4
        // m_BlobIndex: 73
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 103 for m_GpuProgramType: #5
        // m_BlobIndex: 74
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 104 for m_GpuProgramType: #5
        // m_BlobIndex: 75
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 106 for m_GpuProgramType: #4
        // m_BlobIndex: 74
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 107 for m_GpuProgramType: #4
        // m_BlobIndex: 75
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 109 for m_GpuProgramType: #5
        // m_BlobIndex: 76
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 110 for m_GpuProgramType: #5
        // m_BlobIndex: 77
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 112 for m_GpuProgramType: #4
        // m_BlobIndex: 76
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 113 for m_GpuProgramType: #4
        // m_BlobIndex: 77
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 115 for m_GpuProgramType: #5
        // m_BlobIndex: 78
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 116 for m_GpuProgramType: #5
        // m_BlobIndex: 79
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 118 for m_GpuProgramType: #4
        // m_BlobIndex: 78
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 119 for m_GpuProgramType: #4
        // m_BlobIndex: 79
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 121 for m_GpuProgramType: #5
        // m_BlobIndex: 80
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 122 for m_GpuProgramType: #5
        // m_BlobIndex: 81
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 124 for m_GpuProgramType: #4
        // m_BlobIndex: 80
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 125 for m_GpuProgramType: #4
        // m_BlobIndex: 81
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 127 for m_GpuProgramType: #5
        // m_BlobIndex: 82
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 128 for m_GpuProgramType: #5
        // m_BlobIndex: 83
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 130 for m_GpuProgramType: #4
        // m_BlobIndex: 82
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 131 for m_GpuProgramType: #4
        // m_BlobIndex: 83
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 133 for m_GpuProgramType: #5
        // m_BlobIndex: 84
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 134 for m_GpuProgramType: #5
        // m_BlobIndex: 85
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 136 for m_GpuProgramType: #4
        // m_BlobIndex: 84
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 137 for m_GpuProgramType: #4
        // m_BlobIndex: 85
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 139 for m_GpuProgramType: #5
        // m_BlobIndex: 86
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 140 for m_GpuProgramType: #5
        // m_BlobIndex: 87
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 142 for m_GpuProgramType: #4
        // m_BlobIndex: 86
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 143 for m_GpuProgramType: #4
        // m_BlobIndex: 87
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 145 for m_GpuProgramType: #5
        // m_BlobIndex: 88
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 146 for m_GpuProgramType: #5
        // m_BlobIndex: 89
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 148 for m_GpuProgramType: #4
        // m_BlobIndex: 88
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 149 for m_GpuProgramType: #4
        // m_BlobIndex: 89
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 151 for m_GpuProgramType: #5
        // m_BlobIndex: 90
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 152 for m_GpuProgramType: #5
        // m_BlobIndex: 91
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 154 for m_GpuProgramType: #4
        // m_BlobIndex: 90
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 155 for m_GpuProgramType: #4
        // m_BlobIndex: 91
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 92
        // m_ShaderHardwareTier: 0

#ifdef POINT

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 39
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 32
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 93
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 94
        // m_ShaderHardwareTier: 0

#ifdef SPOT

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 95
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 96
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 97
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 49 for m_GpuProgramType: #5
        // m_BlobIndex: 98
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 55 for m_GpuProgramType: #5
        // m_BlobIndex: 99
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 61 for m_GpuProgramType: #5
        // m_BlobIndex: 100
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 67 for m_GpuProgramType: #5
        // m_BlobIndex: 101
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 73 for m_GpuProgramType: #5
        // m_BlobIndex: 102
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 79 for m_GpuProgramType: #5
        // m_BlobIndex: 35
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 85 for m_GpuProgramType: #5
        // m_BlobIndex: 36
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 91 for m_GpuProgramType: #5
        // m_BlobIndex: 103
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 97 for m_GpuProgramType: #5
        // m_BlobIndex: 104
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 103 for m_GpuProgramType: #5
        // m_BlobIndex: 105
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 109 for m_GpuProgramType: #5
        // m_BlobIndex: 106
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 115 for m_GpuProgramType: #5
        // m_BlobIndex: 107
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 121 for m_GpuProgramType: #5
        // m_BlobIndex: 108
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 127 for m_GpuProgramType: #5
        // m_BlobIndex: 109
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 133 for m_GpuProgramType: #5
        // m_BlobIndex: 110
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 139 for m_GpuProgramType: #5
        // m_BlobIndex: 111
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 145 for m_GpuProgramType: #5
        // m_BlobIndex: 112
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef SHADOWS_SOFT

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SOFT
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 151 for m_GpuProgramType: #5
        // m_BlobIndex: 113
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
      Pass // ind: 3, name: SHADOWCASTER
      {
        Name "SHADOWCASTER"
        Tags
        { 
        "LIGHTMODE" = "SHADOWCASTER"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        "SHADOWSUPPORT" = "true"
        }
        LOD 300
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile SHADOWS_DEPTH SHADOWS_CUBE _SPECGLOSSMAP

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 114
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 115
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 116
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 117
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 118
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 119
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 120
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 121
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
      Pass // ind: 4, name: DEFERRED
      {
        Name "DEFERRED"
        Tags
        { 
        "LIGHTMODE" = "DEFERRED"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        }
        LOD 300
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile LIGHTPROBE_SH _SPECGLOSSMAP UNITY_HDR_ON

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 122
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 123
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 8 for m_GpuProgramType: #5
        // m_BlobIndex: 124
        // m_ShaderHardwareTier: 1

#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 123
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 125
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 14 for m_GpuProgramType: #5
        // m_BlobIndex: 126
        // m_ShaderHardwareTier: 1

#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 16 for m_GpuProgramType: #4
        // m_BlobIndex: 124
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 127
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 20 for m_GpuProgramType: #5
        // m_BlobIndex: 128
        // m_ShaderHardwareTier: 1

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 22 for m_GpuProgramType: #4
        // m_BlobIndex: 125
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 129
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 26 for m_GpuProgramType: #5
        // m_BlobIndex: 130
        // m_ShaderHardwareTier: 1

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 28 for m_GpuProgramType: #4
        // m_BlobIndex: 126
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 131
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 34 for m_GpuProgramType: #4
        // m_BlobIndex: 127
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 132
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 128
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 133
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 129
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 134
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 16 for m_GpuProgramType: #4
        // m_BlobIndex: 130
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 135
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 22 for m_GpuProgramType: #4
        // m_BlobIndex: 131
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 136
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 28 for m_GpuProgramType: #4
        // m_BlobIndex: 132
        // m_ShaderHardwareTier: 0

#ifdef LIGHTPROBE_SH
#ifdef UNITY_HDR_ON

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // UNITY_HDR_ON
#endif // LIGHTPROBE_SH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 137
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 34 for m_GpuProgramType: #4
        // m_BlobIndex: 133
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
      Pass // ind: 5, name: META
      {
        Name "META"
        Tags
        { 
        "LIGHTMODE" = "META"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        }
        LOD 300
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile _SPECGLOSSMAP

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 138
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 134
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 139
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 135
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 132
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 128
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 137
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 133
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
  }
  SubShader
  {
      Tags
      { 
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
      }
      LOD 150
      Pass // ind: 1, name: FORWARD
      {
        Name "FORWARD"
        Tags
        { 
        "LIGHTMODE" = "FORWARDBASE"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        "SHADOWSUPPORT" = "true"
        }
        LOD 150
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile DIRECTIONAL LIGHTPROBE_SH _SPECGLOSSMAP SHADOWS_SCREEN VERTEXLIGHT_ON

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 140
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 2 for m_GpuProgramType: #5
        // m_BlobIndex: 141
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 136
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 5 for m_GpuProgramType: #4
        // m_BlobIndex: 137
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 142
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 8 for m_GpuProgramType: #5
        // m_BlobIndex: 143
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 138
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 11 for m_GpuProgramType: #4
        // m_BlobIndex: 139
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 144
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 14 for m_GpuProgramType: #5
        // m_BlobIndex: 145
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 16 for m_GpuProgramType: #4
        // m_BlobIndex: 140
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 17 for m_GpuProgramType: #4
        // m_BlobIndex: 141
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 6
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 20 for m_GpuProgramType: #5
        // m_BlobIndex: 7
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 22 for m_GpuProgramType: #4
        // m_BlobIndex: 6
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 23 for m_GpuProgramType: #4
        // m_BlobIndex: 7
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 8
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 26 for m_GpuProgramType: #5
        // m_BlobIndex: 9
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 28 for m_GpuProgramType: #4
        // m_BlobIndex: 8
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 29 for m_GpuProgramType: #4
        // m_BlobIndex: 9
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 10
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 32 for m_GpuProgramType: #5
        // m_BlobIndex: 11
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 34 for m_GpuProgramType: #4
        // m_BlobIndex: 10
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 35 for m_GpuProgramType: #4
        // m_BlobIndex: 11
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 12
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 38 for m_GpuProgramType: #5
        // m_BlobIndex: 13
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 40 for m_GpuProgramType: #4
        // m_BlobIndex: 12
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 41 for m_GpuProgramType: #4
        // m_BlobIndex: 13
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 146
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 44 for m_GpuProgramType: #5
        // m_BlobIndex: 147
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 46 for m_GpuProgramType: #4
        // m_BlobIndex: 142
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 47 for m_GpuProgramType: #4
        // m_BlobIndex: 143
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 49 for m_GpuProgramType: #5
        // m_BlobIndex: 148
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 50 for m_GpuProgramType: #5
        // m_BlobIndex: 149
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 52 for m_GpuProgramType: #4
        // m_BlobIndex: 144
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 53 for m_GpuProgramType: #4
        // m_BlobIndex: 145
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 55 for m_GpuProgramType: #5
        // m_BlobIndex: 150
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 56 for m_GpuProgramType: #5
        // m_BlobIndex: 151
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 58 for m_GpuProgramType: #4
        // m_BlobIndex: 146
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 59 for m_GpuProgramType: #4
        // m_BlobIndex: 147
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 61 for m_GpuProgramType: #5
        // m_BlobIndex: 152
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 62 for m_GpuProgramType: #5
        // m_BlobIndex: 153
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 64 for m_GpuProgramType: #4
        // m_BlobIndex: 148
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 65 for m_GpuProgramType: #4
        // m_BlobIndex: 149
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 67 for m_GpuProgramType: #5
        // m_BlobIndex: 22
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 68 for m_GpuProgramType: #5
        // m_BlobIndex: 23
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 70 for m_GpuProgramType: #4
        // m_BlobIndex: 22
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 71 for m_GpuProgramType: #4
        // m_BlobIndex: 23
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 73 for m_GpuProgramType: #5
        // m_BlobIndex: 24
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 74 for m_GpuProgramType: #5
        // m_BlobIndex: 25
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 76 for m_GpuProgramType: #4
        // m_BlobIndex: 24
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 77 for m_GpuProgramType: #4
        // m_BlobIndex: 25
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 79 for m_GpuProgramType: #5
        // m_BlobIndex: 26
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 80 for m_GpuProgramType: #5
        // m_BlobIndex: 27
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 82 for m_GpuProgramType: #4
        // m_BlobIndex: 26
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 83 for m_GpuProgramType: #4
        // m_BlobIndex: 27
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 85 for m_GpuProgramType: #5
        // m_BlobIndex: 28
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 86 for m_GpuProgramType: #5
        // m_BlobIndex: 29
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 88 for m_GpuProgramType: #4
        // m_BlobIndex: 28
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 89 for m_GpuProgramType: #4
        // m_BlobIndex: 29
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef VERTEXLIGHT_ON

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // VERTEXLIGHT_ON
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 91 for m_GpuProgramType: #5
        // m_BlobIndex: 154
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 92 for m_GpuProgramType: #5
        // m_BlobIndex: 155
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 94 for m_GpuProgramType: #4
        // m_BlobIndex: 150
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 95 for m_GpuProgramType: #4
        // m_BlobIndex: 151
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 32
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 33
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 34
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 35
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 36
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 37
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 38
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef LIGHTPROBE_SH

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // LIGHTPROBE_SH
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 39
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
      Pass // ind: 2, name: FORWARD_DELTA
      {
        Name "FORWARD_DELTA"
        Tags
        { 
        "LIGHTMODE" = "FORWARDADD"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        "SHADOWSUPPORT" = "true"
        }
        LOD 150
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile POINT DIRECTIONAL _SPECGLOSSMAP SPOT POINT_COOKIE DIRECTIONAL_COOKIE SHADOWS_DEPTH SHADOWS_SCREEN SHADOWS_CUBE

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 156
        // m_ShaderHardwareTier: 0

#ifdef POINT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 2 for m_GpuProgramType: #5
        // m_BlobIndex: 157
        // m_ShaderHardwareTier: 1

#ifdef POINT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 152
        // m_ShaderHardwareTier: 0

#ifdef POINT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 5 for m_GpuProgramType: #4
        // m_BlobIndex: 153
        // m_ShaderHardwareTier: 1

#ifdef POINT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 158
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 8 for m_GpuProgramType: #5
        // m_BlobIndex: 159
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 154
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 11 for m_GpuProgramType: #4
        // m_BlobIndex: 155
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 160
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 14 for m_GpuProgramType: #5
        // m_BlobIndex: 161
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 16 for m_GpuProgramType: #4
        // m_BlobIndex: 156
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 17 for m_GpuProgramType: #4
        // m_BlobIndex: 157
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 162
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 20 for m_GpuProgramType: #5
        // m_BlobIndex: 163
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 22 for m_GpuProgramType: #4
        // m_BlobIndex: 158
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 23 for m_GpuProgramType: #4
        // m_BlobIndex: 159
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 164
        // m_ShaderHardwareTier: 0

#ifdef SPOT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 26 for m_GpuProgramType: #5
        // m_BlobIndex: 165
        // m_ShaderHardwareTier: 1

#ifdef SPOT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 28 for m_GpuProgramType: #4
        // m_BlobIndex: 160
        // m_ShaderHardwareTier: 0

#ifdef SPOT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 29 for m_GpuProgramType: #4
        // m_BlobIndex: 161
        // m_ShaderHardwareTier: 1

#ifdef SPOT

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 166
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 32 for m_GpuProgramType: #5
        // m_BlobIndex: 167
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 34 for m_GpuProgramType: #4
        // m_BlobIndex: 162
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 35 for m_GpuProgramType: #4
        // m_BlobIndex: 163
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 168
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 38 for m_GpuProgramType: #5
        // m_BlobIndex: 169
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 40 for m_GpuProgramType: #4
        // m_BlobIndex: 164
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 41 for m_GpuProgramType: #4
        // m_BlobIndex: 165
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 170
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 44 for m_GpuProgramType: #5
        // m_BlobIndex: 171
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 46 for m_GpuProgramType: #4
        // m_BlobIndex: 166
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 47 for m_GpuProgramType: #4
        // m_BlobIndex: 167
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 49 for m_GpuProgramType: #5
        // m_BlobIndex: 172
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 50 for m_GpuProgramType: #5
        // m_BlobIndex: 173
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 52 for m_GpuProgramType: #4
        // m_BlobIndex: 168
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 53 for m_GpuProgramType: #4
        // m_BlobIndex: 169
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 55 for m_GpuProgramType: #5
        // m_BlobIndex: 174
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 56 for m_GpuProgramType: #5
        // m_BlobIndex: 175
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 58 for m_GpuProgramType: #4
        // m_BlobIndex: 170
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 59 for m_GpuProgramType: #4
        // m_BlobIndex: 171
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 61 for m_GpuProgramType: #5
        // m_BlobIndex: 176
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 62 for m_GpuProgramType: #5
        // m_BlobIndex: 177
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 64 for m_GpuProgramType: #4
        // m_BlobIndex: 172
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 65 for m_GpuProgramType: #4
        // m_BlobIndex: 173
        // m_ShaderHardwareTier: 1

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 67 for m_GpuProgramType: #5
        // m_BlobIndex: 66
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 68 for m_GpuProgramType: #5
        // m_BlobIndex: 67
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 70 for m_GpuProgramType: #4
        // m_BlobIndex: 66
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 71 for m_GpuProgramType: #4
        // m_BlobIndex: 67
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 73 for m_GpuProgramType: #5
        // m_BlobIndex: 68
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 74 for m_GpuProgramType: #5
        // m_BlobIndex: 69
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 76 for m_GpuProgramType: #4
        // m_BlobIndex: 68
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 77 for m_GpuProgramType: #4
        // m_BlobIndex: 69
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 79 for m_GpuProgramType: #5
        // m_BlobIndex: 70
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 80 for m_GpuProgramType: #5
        // m_BlobIndex: 71
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 82 for m_GpuProgramType: #4
        // m_BlobIndex: 70
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 83 for m_GpuProgramType: #4
        // m_BlobIndex: 71
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 85 for m_GpuProgramType: #5
        // m_BlobIndex: 72
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 86 for m_GpuProgramType: #5
        // m_BlobIndex: 73
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 88 for m_GpuProgramType: #4
        // m_BlobIndex: 72
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 89 for m_GpuProgramType: #4
        // m_BlobIndex: 73
        // m_ShaderHardwareTier: 1

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 91 for m_GpuProgramType: #5
        // m_BlobIndex: 178
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 92 for m_GpuProgramType: #5
        // m_BlobIndex: 179
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 94 for m_GpuProgramType: #4
        // m_BlobIndex: 174
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 95 for m_GpuProgramType: #4
        // m_BlobIndex: 175
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 97 for m_GpuProgramType: #5
        // m_BlobIndex: 180
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 98 for m_GpuProgramType: #5
        // m_BlobIndex: 181
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 100 for m_GpuProgramType: #4
        // m_BlobIndex: 176
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 101 for m_GpuProgramType: #4
        // m_BlobIndex: 177
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 103 for m_GpuProgramType: #5
        // m_BlobIndex: 182
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 104 for m_GpuProgramType: #5
        // m_BlobIndex: 183
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 106 for m_GpuProgramType: #4
        // m_BlobIndex: 178
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 107 for m_GpuProgramType: #4
        // m_BlobIndex: 179
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 109 for m_GpuProgramType: #5
        // m_BlobIndex: 184
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 110 for m_GpuProgramType: #5
        // m_BlobIndex: 185
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 112 for m_GpuProgramType: #4
        // m_BlobIndex: 180
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 113 for m_GpuProgramType: #4
        // m_BlobIndex: 181
        // m_ShaderHardwareTier: 1

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 115 for m_GpuProgramType: #5
        // m_BlobIndex: 186
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 116 for m_GpuProgramType: #5
        // m_BlobIndex: 187
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 118 for m_GpuProgramType: #4
        // m_BlobIndex: 182
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 119 for m_GpuProgramType: #4
        // m_BlobIndex: 183
        // m_ShaderHardwareTier: 1

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 92
        // m_ShaderHardwareTier: 0

#ifdef POINT

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 39
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 32
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 93
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 25 for m_GpuProgramType: #5
        // m_BlobIndex: 94
        // m_ShaderHardwareTier: 0

#ifdef SPOT

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 31 for m_GpuProgramType: #5
        // m_BlobIndex: 95
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 37 for m_GpuProgramType: #5
        // m_BlobIndex: 96
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 43 for m_GpuProgramType: #5
        // m_BlobIndex: 97
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 49 for m_GpuProgramType: #5
        // m_BlobIndex: 98
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 55 for m_GpuProgramType: #5
        // m_BlobIndex: 99
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 61 for m_GpuProgramType: #5
        // m_BlobIndex: 100
        // m_ShaderHardwareTier: 0

#ifdef SPOT
#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
#endif // SPOT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 67 for m_GpuProgramType: #5
        // m_BlobIndex: 35
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 73 for m_GpuProgramType: #5
        // m_BlobIndex: 36
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 79 for m_GpuProgramType: #5
        // m_BlobIndex: 103
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 85 for m_GpuProgramType: #5
        // m_BlobIndex: 104
        // m_ShaderHardwareTier: 0

#ifdef DIRECTIONAL_COOKIE
#ifdef SHADOWS_SCREEN

        //  m_ShaderRequirements: 227
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_SCREEN
#endif // DIRECTIONAL_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 91 for m_GpuProgramType: #5
        // m_BlobIndex: 105
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 97 for m_GpuProgramType: #5
        // m_BlobIndex: 106
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 103 for m_GpuProgramType: #5
        // m_BlobIndex: 109
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 109 for m_GpuProgramType: #5
        // m_BlobIndex: 110
        // m_ShaderHardwareTier: 0

#ifdef POINT_COOKIE
#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
#endif // POINT_COOKIE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 115 for m_GpuProgramType: #5
        // m_BlobIndex: 113
        // m_ShaderHardwareTier: 0

#ifdef POINT
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // POINT
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
      Pass // ind: 3, name: SHADOWCASTER
      {
        Name "SHADOWCASTER"
        Tags
        { 
        "LIGHTMODE" = "SHADOWCASTER"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        "SHADOWSUPPORT" = "true"
        }
        LOD 150
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile SHADOWS_DEPTH SHADOWS_CUBE _SPECGLOSSMAP

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 114
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 115
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 116
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 117
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 118
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 119
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 13 for m_GpuProgramType: #5
        // m_BlobIndex: 120
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_CUBE

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // SHADOWS_CUBE
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 19 for m_GpuProgramType: #5
        // m_BlobIndex: 121
        // m_ShaderHardwareTier: 0

#ifdef SHADOWS_DEPTH
#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 1
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
#endif // SHADOWS_DEPTH
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
      Pass // ind: 4, name: META
      {
        Name "META"
        Tags
        { 
        "LIGHTMODE" = "META"
        "PerformanceChecks" = "False"
        "RenderType" = "Opaque"
        }
        LOD 150
        // m_ProgramMask = 6
        CGPROGRAM
#pragma target 3.0
#pragma vertex vertexShader
#pragma fragment fragmentShader
#pragma multi_compile _SPECGLOSSMAP

        // ======================
        // SerializedProgram: progVertex

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 138
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 134
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 139
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 135
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        float4 vertexShader(float4 v:POSITION) : SV_POSITION
        {
            return UnityObjectToClipPos(v); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        //
        // ======================


        // ======================
        // SerializedProgram: progFragment

        // ++++++++++++++++
        // Sub Program: 1 for m_GpuProgramType: #5
        // m_BlobIndex: 132
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 4 for m_GpuProgramType: #4
        // m_BlobIndex: 128
        // m_ShaderHardwareTier: 0


        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 7 for m_GpuProgramType: #5
        // m_BlobIndex: 137
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        // ++++++++++++++++
        // Sub Program: 10 for m_GpuProgramType: #4
        // m_BlobIndex: 133
        // m_ShaderHardwareTier: 0

#ifdef _SPECGLOSSMAP

        //  m_ShaderRequirements: 33
        fixed4 fragmentShader() : SV_Target
        {
            return fixed4(1,1,1,1); // IS STUB!!!!
        }
#endif // _SPECGLOSSMAP
        //
        // ++++++++++++++++

        //
        // ======================


        ENDCG
      } // end phase
  }
  FallBack "VertexLit"
  /* Disabemble: 
   https://blogs.unity3d.com/ru/2015/08/27/plans-for-graphics-features-deprecation/


 Block#0 Platform: 5 raw_size: 955356

 Block#1 Platform: 9 raw_size: 1008708
  */
}