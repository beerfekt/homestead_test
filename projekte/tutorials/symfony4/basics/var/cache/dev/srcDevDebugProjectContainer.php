<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerRGOdlvi\srcDevDebugProjectContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerRGOdlvi/srcDevDebugProjectContainer.php') {
    touch(__DIR__.'/ContainerRGOdlvi.legacy');

    return;
}

if (!\class_exists(srcDevDebugProjectContainer::class, false)) {
    \class_alias(\ContainerRGOdlvi\srcDevDebugProjectContainer::class, srcDevDebugProjectContainer::class, false);
}

return new \ContainerRGOdlvi\srcDevDebugProjectContainer(array(
    'container.build_hash' => 'RGOdlvi',
    'container.build_id' => '21df148a',
    'container.build_time' => 1542042481,
), __DIR__.\DIRECTORY_SEPARATOR.'ContainerRGOdlvi');