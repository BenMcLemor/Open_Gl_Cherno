#pragma once

#ifdef __GNUC__

extern Hazel::Application *Hazel::CreateApplication();

int main(int argc, char **argv)
{
    printf("Hazel Engine\n");
    auto app = Hazel::CreateApplication();
    app->Run();
    delete app;
}

#endif // EXPORT