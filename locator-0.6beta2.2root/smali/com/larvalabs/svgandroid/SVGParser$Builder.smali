.class public Lcom/larvalabs/svgandroid/SVGParser$Builder;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dpi:F

.field private ignoreDefs:Z

.field private in:Ljava/io/InputStream;

.field private replaceColor:Ljava/lang/Integer;

.field private searchColor:Ljava/lang/Integer;

.field private shouldClose:Z

.field private whiteMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 233
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    .line 234
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Builder;->searchColor:Ljava/lang/Integer;

    .line 235
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Builder;->replaceColor:Ljava/lang/Integer;

    .line 236
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Builder;->whiteMode:Z

    .line 237
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Builder;->ignoreDefs:Z

    .line 238
    move-object v1, v0

    sget v2, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    iput v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Builder;->dpi:F

    .line 239
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Builder;->shouldClose:Z

    .line 240
    return-void
.end method


# virtual methods
.method public build()Lcom/larvalabs/svgandroid/SVG;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/larvalabs/svgandroid/SVGParseException;
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 298
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "No input SVG provided"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$Builder;->searchColor:Ljava/lang/Integer;

    move-object v5, v0

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Builder;->replaceColor:Ljava/lang/Integer;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/larvalabs/svgandroid/SVGParser$Builder;->whiteMode:Z

    move-object v7, v0

    iget-boolean v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Builder;->ignoreDefs:Z

    move-object v8, v0

    iget v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Builder;->dpi:F

    invoke-static/range {v3 .. v8}, Lcom/larvalabs/svgandroid/SVGParser;->access$0(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZF)Lcom/larvalabs/svgandroid/SVG;

    move-result-object v3

    move-object v1, v3

    .line 301
    move-object v3, v0

    iget-boolean v3, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->shouldClose:Z

    if-eqz v3, :cond_1

    .line 303
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_1
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 304
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 305
    const-string v3, "SVG"

    const-string v4, "parsing svg"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 306
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public ignoreDefs(Z)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$Builder;->ignoreDefs:Z

    .line 251
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public replaceColors(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 5

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->searchColor:Ljava/lang/Integer;

    .line 244
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->replaceColor:Ljava/lang/Integer;

    .line 246
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    .line 276
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->shouldClose:Z

    .line 277
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setBytes([B)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 7

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    .line 282
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$Builder;->shouldClose:Z

    .line 283
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDpi(F)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/larvalabs/svgandroid/SVGParser$Builder;->dpi:F

    .line 266
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    .line 271
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setResource(Landroid/content/res/Resources;I)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 6

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->in:Ljava/io/InputStream;

    .line 292
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Builder;->shouldClose:Z

    .line 293
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setString(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/larvalabs/svgandroid/SVGParser$Builder;->setBytes([B)Lcom/larvalabs/svgandroid/SVGParser$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public shouldClose(Z)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$Builder;->shouldClose:Z

    .line 261
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public whiteMode(Z)Lcom/larvalabs/svgandroid/SVGParser$Builder;
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$Builder;->whiteMode:Z

    .line 256
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
