# Deep Fakes – Threats and Countermeasures

Methods for manipulating media identities have existed for many years now. It is common knowledge that images can be manipulated by a variety of methods. For a long time, it was very time-consuming to produce high-quality manipulations of dynamic media such as videos or audio recordings. Methods from the field of artificial intelligence (AI) have now made this much easier, and high-quality fakes can be created with comparatively little effort and expertise. Because they use deep neural networks, such methods are often referred to as 'deep fakes'.

Methods for manipulating media identities can be divided into three forms of media: video/images, audio and text. The sections below explain the attack methods that exist according to the current state of the art, which data is required for a successful attack and the effort that is necessary to create forgeries using deep-fake methods.

## Fake faces

To manipulate faces in videos, several AI-based processes have been developed in recent years. These either attempt to exchange faces in a video ('face swapping'), control the facial expressions/head movements of a person in a video ('face reenactment'), or synthesise new (pseudo) identities.

Source: brgfx / Freepik Zusammenstellung: BSI 

In the face swap process (shown in the figure above), the aim is to input the face of one person and create a facial image of another person with the same expression, illumination and gaze direction. The model for this involves using an autoencoderin common public software libraries. The resulting neural networks learn to extract the relevant facial expression and illumination information from a facial image in coded form and to generate a corresponding facial image from the coded information. Meanwhile, commercially available graphics cards can be used to train high-resolution models that can handle close-ups of faces in full HD videos. Some of these models also support face swapping in real time (or with only a slight delay). Only a few minutes of video of a target person are required as training material. However, the video must be of a high quality and contain as many different facial expressions and perspectives as possible so that the model can learn to manipulate them.

Face reenactment involves manipulating a person's head movement, facial expressions or lip movement. This makes it possible to create visually deceptive videos in which a person makes statements that they never made in reality. Popular techniques achieve this by creating a 3D model of the target's face from a video stream. The manipulator can then control this with their own video stream and create deceptively real facial expressions on the target person.

In the process of synthesising facial images, new people can also be be created that do not exist in reality. Current methods are still limited to single images, but these can already produce close-ups with a high image resolution and depth of detail.

## Fake voices

In creating manipulated voices, text-to-speech (TTS) and voice conversion (VC) procedures are particularly significant.

Source: brgfx / Macrovector / Freepik Zusammenstellung: BSI 

The basic functioning of the text-to-speech procedure is outlined in the figure above. Here, a user can enter a text for the TTS system to process and convert into an audio signal. The semantic content of the signal corresponds to that of the given text, and in the ideal case, the speaker-specific characteristics correspond to the target person specified by the user. In principle, this can be used to deceive both humans and automated speech recognition processes.

Source: brgfx / Macrovector / Freepik Zusammenstellung: BSI 

The basic functioning of a voice-conversion procedure is outlined in the figure above. Here, a user provides the VC system with an audio signal that it converts into a manipulated audio signal. The generated audio signal has the same semantic content as the original signal, but differs in the audible characteristics of the speaker. In the most effective cases, the voice resembles that of the target person selected by the attacker.

For these methods to work, they must first be 'taught' using training data. The type of data required differs depending on the type of attack; common to all methods, however, is the requirement for audio recordings of the target that are of the highest consistent quality possible.

Since both TTS and VC processes tend to be implemented by complex neural networks, several hours of training data on the target person are necessary to achieve a high quality. However, there are ways to reduce the data required on the target person to a few minutes by using large databases of other people as auxiliary data. Modern research approaches are working on methods that require only a few seconds of audio material from the target person and no new training process, but this has so far been at the expense of output quality.

## Fake texts

Methods of generating texts that are based on deep neuronal networks are succeeding in writing long and coherent texts thanks to new AI models, large text databases and high-performance computers. At first glance, it is not possible to distinguish whether these texts were written by a human or a machine. In most cases, a model only requires a few introductory words to generate a plausible possible continuation of the text. This can be used to compose messages, create blog entries or even generate chat responses.

At present, the resources needed to train a system and apply these powerful models still go beyond what is common in the consumer sector. This means private individuals have to rely on publicly accessible cloud services for such purposes. As the technology continues to develop, it is likely that these services will be used in chatbots or social bots to simulate conversation partners. Gesprächspartner zu simulieren.

## Possible threat scenarios

Using these procedures, it is now even possible for technically savvy laypersons to manipulate media identities, which results in numerous threat scenarios:

*   **Overcoming biometric systems:** Since it is possible to use deep fake procedures to create media content with the characteristics of a target person and some of these procedures can already be executed in real time, they pose a high threat to biometric systems. Especially with remote identification procedures (such as speaker recognition via telephone or video identification), attacks like these are seen as promising, as a potential defender only receives the output signal. They have no control over the recording sensor technology or the changes made to the recorded material.
*   **Social engineering** Deep fake processes can also be used to carry out targeted phishing attacks (spear phishing) to gain information and data.
*   An attacker can also use this technology to carry out fraud and siphon off financial resources. For example, they could call a person using the voice of their chief executive to trigger a money transaction ('CEO fraud').
*   **Disinformation campaigns:** Using deep fake techniques, it is possible to conduct credible disinformation campaigns by generating and disseminating manipulated media content from key individuals.
*   **Defamation:** The ability to generate media content that can attribute any statement to a person and portray them in any situation makes it possible to spread falsehoods that can cause lasting damage to the person's reputation.

## Example video

The following video shows an example of three different faking methods (in german language).

 

00:00

00:00

00:00

Use Up/Down Arrow keys to increase or decrease volume.

First, a face-swapping technique is used to replace the face of an attacker with that of Arne Schönbohm, President of the BSI. To train the AI model that performed the face swap, videos of approximately 5–10 minutes were recorded of both persons. In particular, the video shows that it is already possible to create a relatively high-quality fake like this in real time.

The video also includes two audio forgeries. In one of these fakes, a text-to-speech process was used to create audio segments with the voice of Arne Schönbohm. In addition, the voice of the off-screen narrator was transformed into that of the BSI President using a voice conversion procedure. To train the system, approximately 10 minutes of audio material from Arne Schönbohm were used; it was extracted from public videos that were only of medium quality.

In the following audio segments, the original recording of a speaker can be heard first. The subsequent segment then features an audio signal that was generated in a TTS procedure to resemble the same speaker. The final audio segment contains a version of the original recording that was manipulated by a VC process to match the voice of Arne Schönbohm.

*   Original vioce:



    00:00

    00:00

    00:00

    Use Up/Down Arrow keys to increase or decrease volume.

*   Voice manipulated by TTS:



    00:00

    00:00

    00:00

    Use Up/Down Arrow keys to increase or decrease volume.

*   Voice manipulated to resemble Arne Schönbohm:



    00:00

    00:00

    00:00

    Use Up/Down Arrow keys to increase or decrease volume.

Text spoken in the audio files: 'Good afternoon, ladies and gentlemen. I am not real, and for now, you can recognise that fact. As technology matures, however, you will find this very, very difficult.'

## Countermeasures

There are many ways to defend against these methods. They can be divided into the two categories of prevention and detection.

### 1\. Prevention

The preventive countermeasures aim to reduce the risk of a successful attack using deep fakes.

#### Raising awareness

A central safeguard against deep fake attacks involves educating those who could be affected. First of all, knowing that such attacks are possible should give potential targets a more differentiated ability to assess the authenticity of material they see or hear, taking the respective source into account. In addition, many deep fake procedures produce some clear artefacts. An awareness of these artefacts can significantly increase the detection of fakes. Especially in real-time applications, an attacker does not have the option to clean up artefact-laden material manually after the fact.

##### Typical artefacts in face manipulations

*   **Visible transitions:** In a face-swapping procedure, the face of the target person is superimposed on the head of another person. This can result in visible artefacts around the edge of the face. It is also possible for the skin colour and texture to change at this transition point. In some frames, parts of the original face (an additional set of eyebrows, for example) can become noticeable at the edge of the target face.
*   **Sharp contours become blurred:** Face-swapping methods often still fail to create sharp contours, such as those found in the teeth or eyes. On closer inspection, these appear conspicuously blurred.
*   **Limited facial expressions, inconsistent lighting:** A lack of sufficient data may limit a model's ability to accurately represent some facial expressions or lighting situations. The profile view of a face is often insufficiently learned, which can result in blurriness or other visual errors if the head quickly turns.

##### Typical artefacts with synthetic voices

*   **Metallic sound:** Many processes produce an audio signal that is perceived as 'metallic' by the human ear.
*   **Incorrect pronunciation:** TTS procedures often mispronounce some words. This can happen, for example, when a TTS procedure has been trained for the German language, but is required to pronounce an English word.
*   **Monotone speech output:** Particularly if the training data for a TTS system is not ideal, the audio signals it generates can be very monotonous when it comes to word emphasis.
*   **Incorrect diction:** For the most part, forgery techniques are comparatively good at faking the timbre of a voice, but they often have difficulty copying the specific characteristics of the voice. Accents or stresses on words then do not match those of the target speaker.
*   **Unnatural sounds:** If a forgery method receives input data that is very different from the training data used, the method may produce unnatural sounds. A text-to-speech process may be fed an excessively long text, for example, or a voice conversion process may have to deal with a recording that includes silence.
*   **High delay:** Most synthetic voice generation techniques need to be provided with some of the semantic content to be generated in order to produce a high-quality result. As a result, high-quality fakes are often accompanied by a certain time delay, since this semantic content must first be pronounced and captured before it can be processed by a VC/TTS procedure.
*   To train the ability to recognise manipulated audio data, one resource that can be used is the application developed by Fraunhofer AISEC

#### Cryptography

Cryptographic methods make it possible to link the source of material to a unique identity. This enables secure attribution to a trustworthy source (authenticity) and ensures that manipulations are immediately noticed once material has been secured (integrity protection). However, this cannot prevent a source itself from manipulating material beforehand. Current developments are exploring the creation of a digital signature during the recording process, for example, which would ensure that material has not been manipulated thereafter.

#### Laws

Legal regulations can serve as a barrier to the circulation of deep fakes that are not clearly marked as such. In particular, the EU European Commission's draft regulation on AI systems requires all materials created with deep fake technology to be labelled.

### 2\. Detection

Detection countermeasures aim to recognise data that has been manipulated by means of deep fake procedures.

#### Media forensics

Using methods from media forensics, it is possible to detect artefacts that occur when manipulation methods are used. This enables experts to detect forgeries in a transparent way.

#### Automated detection

In recent years, numerous methods of detecting manipulated data automatically have been published in the related research literature. These methods are usually based on artificial intelligence techniques, and on deep neural networks in particular. Because of this, these methods need to be trained on large amounts of data. After the training phase, the resulting model can be used to determine whether a data example (such as a video) has been manipulated.

## Challenges of (automated) countermeasures

One problem with these countermeasures is that they cannot be applied in all situations and usually do not provide complete protection.

Especially in the case of automated detection methods, it should be noted that they often only work reliably under certain framework conditions. Since these methods are usually based on artificial intelligence procedures, the fundamental problems of these procedures are also inherent.

*   **Generalisation:** A central problem of most detection methods is the limited extent to which they can be generalised. Since the methods have been trained on specific data, they often work relatively reliably on similar data. If individual parameters are changed, however, this affects the accuracy of the output. An important example of such a change would be a transition to another attack method that was not present in the training data. This behaviour could be observed, for example, in the Deepfake Detection Challenge (2020), in which even the best model could only achieve an average accuracy of 65.18 per cent, when an accuracy of 50 per cent would be achieved by mere guesswork.
*   **AI-specific attacks:** Another key problem with these techniques is that they can be overcome by AI-specific attacks, with adversarial attacks posing a particular threat. For additional information, see: Sicherer, robuster und nachvollziehbarer Einsatz von KI
     For example, an adaptive attacker can create targeted noise and superimpose it on an image manipulated using a face-swapping technique. This noise can be so subtle that it is not noticeable to the human eye, but still be capable of preventing a detection procedure from classifying the image as fake. Such attacks cannot be avoided completely, but they should be taken into account when creating detection procedures, and the barriers to corresponding attackers should be increased.

## Outlook

The technology for forging media identities has developed significantly in recent years, especially due to advances in the field of artificial intelligence. Current research results indicate that this trend will continue and make the manual detection of forgeries increasingly difficult in the future. It can also be assumed that the amount of data required on a given target individual will steadily decrease. Even now, it is possible for a technically savvy layperson to create high-quality fakes. Furthermore, it can be assumed that the expertise and effort required to create counterfeits will steadily decrease due to the improvement and increased availability of public tools. The frequency of attacks using this technology could therefore increase significantly. For these reasons, it is vital that the countermeasures listed here be developed further and combined in an application-specific manner.

## Similar topics

*   AI Audit and Assurance Assessment Architecture (A5)
*   Criteria Catalogue for AI Cloud Services – AIC4
*   Biometrics as an AI Application Area

 Back to Artificial Intelligence