const HelloWorld = 'Olá, mundo';

interface WriteProps {
  message: string;
}

function WriteOnScreen({ message }: string ): void {
  message = true ? console.log(message) : console.log('error');
}

WriteOnScreen(HelloWorld);
