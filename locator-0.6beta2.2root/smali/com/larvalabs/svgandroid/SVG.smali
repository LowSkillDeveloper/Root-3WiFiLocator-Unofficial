.class public Lcom/larvalabs/svgandroid/SVG;
.super Ljava/lang/Object;
.source "SVG.java"


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private limits:Landroid/graphics/RectF;

.field private picture:Landroid/graphics/Picture;


# direct methods
.method constructor <init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVG;->limits:Landroid/graphics/RectF;

    .line 57
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVG;->picture:Landroid/graphics/Picture;

    .line 58
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVG;->bounds:Landroid/graphics/RectF;

    .line 59
    return-void
.end method


# virtual methods
.method public createPictureDrawable()Landroid/graphics/drawable/PictureDrawable;
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVG;->picture:Landroid/graphics/Picture;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    move-object v0, v1

    return-object v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVG;->bounds:Landroid/graphics/RectF;

    move-object v0, v1

    return-object v0
.end method

.method public getLimits()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVG;->limits:Landroid/graphics/RectF;

    move-object v0, v1

    return-object v0
.end method

.method public getPicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVG;->picture:Landroid/graphics/Picture;

    move-object v0, v1

    return-object v0
.end method

.method public resizePicture(II)Landroid/graphics/Picture;
    .locals 15

    .prologue
    .line 104
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v6, Landroid/graphics/Picture;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Landroid/graphics/Picture;-><init>()V

    move-object v3, v6

    .line 105
    move v6, v2

    move v7, v1

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v4, v6

    .line 106
    new-instance v6, Landroid/graphics/Canvas;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v4

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v5, v6

    .line 107
    move-object v6, v3

    move v7, v2

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v6

    move-object v5, v6

    .line 108
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVG;->picture:Landroid/graphics/Picture;

    new-instance v8, Landroid/graphics/Rect;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v2

    move v13, v1

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    .line 109
    move-object v6, v3

    invoke-virtual {v6}, Landroid/graphics/Picture;->endRecording()V

    .line 110
    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method setLimits(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVG;->limits:Landroid/graphics/RectF;

    .line 67
    return-void
.end method
