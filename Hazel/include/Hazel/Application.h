#pragma once

#include "Core.h"

namespace Hazel
{
    class EXPORT Application
    {
    private:
        /* data */
    public:
        Application(/* args */);
        virtual ~Application();
        void Run();
    };

    // to be defined in Client
    Application *CreateApplication();
}
