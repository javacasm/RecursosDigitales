m0 = "1. Introducción a la edición de recursos digitales.docx"
m1 = "2. Grabación y edición de audio.docx"
m2 = "3. Grabación de videotutorials.docx"
m3 = "4. Edición de vídeo.docx"

all: m0 m1 m2 m3 


m0:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m0)  \
					Cabecera.md        \
					Cabecera_latex.md \
					0.1_Introduccion.md \
					0.2_RecursosMateriales.md \
					0.3_SoftwareNecesario.md \
					0.4_Licencias.md

m1:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m1)  \
					Cabecera.md        \
					Cabecera_latex.md \
					1.0_GrabacionAudio.md \
					1.1_Audacity.md \
					1.3_BancosSonidosMusica.md \
					2.0_Podcast.md
				
m2:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m2)  \
					Cabecera.md        \
					Cabecera_latex.md \
					3.2.0_GrabacionVideo.md \
					3.4_Reproductores.md \
					3.5.0_ScreenCast.md \
					3.5.1_VokoScreen.md \
					3.5.2_OBS.md \
					3.5.3_GrabacionMac.md \
					3.5.4_GrabacionAndroid.md \
					3.5.5_GrabacionIPad.md \

m3: 
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m3)  \
					Cabecera.md        \
					Cabecera_latex.md \
					4.0_EdicionVideo.md \
					4.1_OpenShot.md \
					4.3_Youtube.md

