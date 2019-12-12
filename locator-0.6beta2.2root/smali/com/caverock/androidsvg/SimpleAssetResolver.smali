.class public Lcom/caverock/androidsvg/SimpleAssetResolver;
.super Lcom/caverock/androidsvg/SVGExternalFileResolver;
.source "SimpleAssetResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final supportedFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-class v0, Lcom/caverock/androidsvg/SimpleAssetResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVGExternalFileResolver;-><init>()V

    .line 55
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/svg+xml"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 56
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/jpeg"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/png"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 59
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/pjpeg"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 60
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/gif"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 61
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/bmp"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 62
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/x-windows-bmp"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 65
    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    const-string v3, "image/webp"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    .line 47
    return-void
.end method


# virtual methods
.method public isFormatSupported(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/caverock/androidsvg/SimpleAssetResolver;->supportedFormats:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    sget-object v5, Lcom/caverock/androidsvg/SimpleAssetResolver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "resolveFont("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 82
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 93
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 89
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".otf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 91
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 93
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    sget-object v3, Lcom/caverock/androidsvg/SimpleAssetResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "resolveImage("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 108
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/caverock/androidsvg/SimpleAssetResolver;->assetManager:Landroid/content/res/AssetManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 109
    move-object v3, v2

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 113
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 113
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method
