<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerKtxUzba\srcProdProjectContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerKtxUzba/srcProdProjectContainer.php') {
    touch(__DIR__.'/ContainerKtxUzba.legacy');

    return;
}

if (!\class_exists(srcProdProjectContainer::class, false)) {
    \class_alias(\ContainerKtxUzba\srcProdProjectContainer::class, srcProdProjectContainer::class, false);
}

return new \ContainerKtxUzba\srcProdProjectContainer(array(
    'container.build_hash' => 'KtxUzba',
    'container.build_id' => '5560ec56',
    'container.build_time' => 1543485603,
), __DIR__.\DIRECTORY_SEPARATOR.'ContainerKtxUzba');
