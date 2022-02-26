#include <SDL2/SDL.h>
#include <stdio.h>

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

int main(int argc, char **argv){

	// Window to render to
	SDL_Window *window = NULL;

	// Surface contained by window
	SDL_Surface *screenSurface = NULL;

	// Initialize SDL
	if(SDL_Init(SDL_INIT_VIDEO) < 0){
		printf("SDL cannot initialize, SDL_Error: %s\n", SDL_GetError());
	}

	// Create the window
	window = SDL_CreateWindow("Lesson 1",
				  SDL_WINDOWPOS_UNDEFINED,
				  SDL_WINDOWPOS_UNDEFINED,
				  SCREEN_WIDTH,
				  SCREEN_HEIGHT,
				  SDL_WINDOW_SHOWN);
	if(window == NULL){
		printf("Window cannot be created, SDL_Error: %s\n", SDL_GetError());
	}

	// Get window surface
	screenSurface = SDL_GetWindowSurface(window);

	// Color window with color
	SDL_FillRect(screenSurface,
		     NULL,
		     SDL_MapRGB(screenSurface->format, 0x36, 0x39, 0x3E));

	// Update surface
	SDL_UpdateWindowSurface(window);

	// Delay for number of milliseconds
	SDL_Delay(1000);

	// Destroy window
	SDL_DestroyWindow(window);

	//Quit SDL subsystem
	SDL_Quit();

	return 0;
}
