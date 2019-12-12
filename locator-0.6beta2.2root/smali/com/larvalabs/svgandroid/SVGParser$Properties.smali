.class Lcom/larvalabs/svgandroid/SVGParser$Properties;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Properties"
.end annotation


# instance fields
.field atts:Lorg/xml/sax/Attributes;

.field styles:Lcom/larvalabs/svgandroid/SVGParser$StyleSet;


# direct methods
.method private constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 9

    .prologue
    .line 996
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 993
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Properties;->styles:Lcom/larvalabs/svgandroid/SVGParser$StyleSet;

    .line 997
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Properties;->atts:Lorg/xml/sax/Attributes;

    .line 998
    const-string v3, "style"

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 999
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1000
    move-object v3, v0

    new-instance v4, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;-><init>(Ljava/lang/String;Lcom/larvalabs/svgandroid/SVGParser$StyleSet;)V

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$Properties;->styles:Lcom/larvalabs/svgandroid/SVGParser$StyleSet;

    .line 1002
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V
    .locals 5

    .prologue
    .line 996
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method private hex3Tohex6(I)I
    .locals 5

    .prologue
    .line 1037
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0xf00

    and-int/lit16 v2, v2, 0xf00

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move v3, v1

    const/16 v4, 0xf00

    and-int/lit16 v3, v3, 0xf00

    const/16 v4, 0xc

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    .line 1038
    move v3, v1

    const/16 v4, 0xf0

    and-int/lit16 v3, v3, 0xf0

    const/4 v4, 0x4

    shl-int/lit8 v3, v3, 0x4

    .line 1037
    or-int/2addr v2, v3

    .line 1038
    move v3, v1

    const/16 v4, 0xf0

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    .line 1037
    or-int/2addr v2, v3

    .line 1039
    move v3, v1

    const/16 v4, 0xf

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    shl-int/lit8 v3, v3, 0x4

    .line 1037
    or-int/2addr v2, v3

    .line 1039
    move v3, v1

    const/16 v4, 0xf

    and-int/lit8 v3, v3, 0xf

    .line 1037
    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 1006
    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$Properties;->styles:Lcom/larvalabs/svgandroid/SVGParser$StyleSet;

    if-eqz v3, :cond_0

    .line 1007
    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$Properties;->styles:Lcom/larvalabs/svgandroid/SVGParser$StyleSet;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1009
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 1010
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$Properties;->atts:Lorg/xml/sax/Attributes;

    invoke-static {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1012
    :cond_1
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getColorValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1021
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1022
    const/4 v4, 0x0

    move-object v0, v4

    .line 1031
    :goto_0
    return-object v0

    .line 1023
    :cond_0
    move-object v4, v2

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 1025
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    .line 1026
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->hex3Tohex6(I)I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    .line 1027
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1028
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 1031
    :cond_3
    move-object v4, v2

    invoke-static {v4}, Lcom/larvalabs/svgandroid/SVGColors;->mapColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6

    .prologue
    .line 1053
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1054
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1055
    const/4 v4, 0x0

    move-object v0, v4

    .line 1060
    :goto_0
    return-object v0

    .line 1058
    :cond_0
    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1060
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 6

    .prologue
    .line 1044
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    move-object v3, v4

    .line 1045
    move-object v4, v3

    if-nez v4, :cond_0

    .line 1046
    move v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v0, v4

    .line 1048
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1016
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
