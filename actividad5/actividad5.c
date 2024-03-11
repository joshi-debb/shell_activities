#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

int main() {
    pid_t pid;
    pid = fork();
    if (pid == 0) {
        /* child process */
        printf("Child Process\n");
        fork();
        pthread_t tid;
        pthread_create(&tid, NULL, NULL, NULL);
        printf("Thread created in child process\n");
        fork();
    } else {
        printf("Parent Process\n");
        fork();
    }
    return 0;
}
