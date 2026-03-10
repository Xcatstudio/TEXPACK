#include <Geode/Geode.hpp>
#include <Geode/modify/CCTextureCache.hpp>
#include <Geode/modify/MenuLayer.hpp>

using namespace geode::prelude;

class $modify(TextureLoaderCache, CCTextureCache) {
    CCTexture2D* addImage(const char* path, bool idk) {
        auto mod = Mod::get();
        
        if (!mod->getSettingValue<bool>("enabled")) {
            return CCTextureCache::addImage(path, idk);
        }

        std::string texturePath = mod->getSettingValue<std::string>("texture-folder");
        std::string customPath = texturePath + "/" + std::string(path);
        
        auto customFile = Mod::get()->getResourcesDir() / customPath;
        
        if (std::filesystem::exists(customFile)) {
            log::info("Loading custom texture: {}", customPath);
            return CCTextureCache::addImage(customFile.string().c_str(), idk);
        }
        
        return CCTextureCache::addImage(path, idk);
    }
};

class $modify(TextureLoaderMenu, MenuLayer) {
    bool init() {
        if (!MenuLayer::init()) {
            return false;
        }
        
        auto mod = Mod::get();
        if (mod->getSettingValue<bool>("enabled")) {
            log::info("Texture Loader is active!");
        }
        
        return true;
    }
};

$execute {
    log::info("Texture Loader mod loaded!");
}
