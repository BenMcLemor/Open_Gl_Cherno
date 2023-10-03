#pragma once

#ifdef __GNUC__

extern Hazel::Application *Hazel::CreateApplication();

int main(int argc, char **argv)
{
    Hazel::Log::Init();
    HZ_CORE_WARN("Initialize Log!");
    HZ_CORE_INFO("Hello!");
    auto app = Hazel::CreateApplication();
    app->Run();
    delete app;
}

#endif // EXPORT