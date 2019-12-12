.class public Lcom/caverock/androidsvg/SVGImageView;
.super Landroid/widget/ImageView;
.source "SVGImageView.java"


# static fields
.field private static setLayerTypeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "setLayerType"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-class v8, Landroid/graphics/Paint;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    :try_start_0
    const-class v4, Landroid/view/View;

    const-string v5, "setLayerType"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-class v9, Landroid/graphics/Paint;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    .line 67
    return-void

    .line 53
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    :try_start_0
    const-class v5, Landroid/view/View;

    const-string v6, "setLayerType"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-class v10, Landroid/graphics/Paint;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/caverock/androidsvg/SVGImageView;->init(Landroid/util/AttributeSet;I)V

    .line 74
    return-void

    .line 53
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 13

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 80
    move-object v9, v1

    sget-object v10, Lcom/caverock/androidsvg/R$styleable;->SVGImageView:[I

    move v11, v2

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 79
    move-object v3, v8

    .line 83
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_0
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move v4, v8

    .line 84
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 85
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVGImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    move-object v8, v3

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 90
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 92
    move-object v8, v5

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v6, v8

    .line 93
    move-object v8, v0

    move-object v9, v6

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/caverock/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    goto :goto_0

    .line 97
    :cond_1
    move-object v8, v0

    move-object v9, v5

    :try_start_2
    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/SVGImageView;->setImageAsset(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :cond_2
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v8

    move-object v7, v8

    .line 101
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    move-object v8, v7

    throw v8
.end method

.method private internalSetImageURI(Landroid/net/Uri;Z)Z
    .locals 12

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v7, 0x0

    move-object v3, v7

    .line 183
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    move-object v3, v7

    .line 184
    move-object v7, v3

    invoke-static {v7}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v7

    move-object v4, v7

    .line 185
    move-object v7, v0

    invoke-direct {v7}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 186
    move-object v7, v0

    new-instance v8, Landroid/graphics/drawable/PictureDrawable;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 205
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :cond_0
    :goto_0
    const/4 v7, 0x1

    move v0, v7

    .line 198
    :goto_1
    return v0

    .line 207
    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_0

    .line 189
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 191
    move v7, v2

    if-eqz v7, :cond_1

    .line 192
    :try_start_2
    const-string v7, "SVGImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "File not found: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 204
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 205
    move-object v7, v3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 193
    :cond_2
    :goto_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 207
    :catch_2
    move-exception v7

    move-object v6, v7

    goto :goto_2

    .line 195
    :catch_3
    move-exception v7

    move-object v4, v7

    .line 197
    :try_start_4
    const-string v7, "SVGImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Error loading file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    .line 204
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 205
    move-object v7, v3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 198
    :cond_3
    :goto_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 207
    :catch_4
    move-exception v7

    move-object v6, v7

    goto :goto_3

    .line 201
    :catchall_0
    move-exception v7

    move-object v5, v7

    .line 204
    move-object v7, v3

    if-eqz v7, :cond_4

    .line 205
    move-object v7, v3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 208
    :cond_4
    :goto_4
    move-object v7, v5

    throw v7

    .line 207
    :catch_5
    move-exception v7

    move-object v6, v7

    goto :goto_4
.end method

.method private setSoftwareLayerType()V
    .locals 9

    .prologue
    .line 217
    move-object v0, p0

    sget-object v2, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    move v1, v2

    .line 223
    sget-object v2, Lcom/caverock/androidsvg/SVGImageView;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 229
    :goto_1
    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 227
    const-string v2, "SVGImageView"

    const-string v3, "Unexpected failure calling setLayerType"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public setImageAsset(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v3

    move-object v2, v3

    .line 157
    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 158
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/PictureDrawable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 162
    const-string v3, "SVGImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Error loading file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 164
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 166
    const-string v3, "SVGImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "File not found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 168
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 170
    const-string v3, "SVGImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Unable to load asset file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 10

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v3

    move-object v2, v3

    .line 129
    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 130
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/PictureDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 134
    const-string v3, "SVGImageView"

    const-string v4, "Error loading resource 0x%x: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVGImageView;->internalSetImageURI(Landroid/net/Uri;Z)Z

    move-result v2

    .line 146
    return-void
.end method

.method public setSVG(Lcom/caverock/androidsvg/SVG;)V
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Null value passed to setSVG()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V

    .line 116
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/PictureDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method
