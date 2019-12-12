.class Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SvgText"
.end annotation


# static fields
.field private static final MIDDLE:I = 0x1

.field private static final TOP:I = 0x2


# instance fields
.field private fill:Landroid/graphics/Paint;

.field private inText:Z

.field private stroke:Landroid/graphics/Paint;

.field private svgText:Ljava/lang/String;

.field final synthetic this$1:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;

.field private vAlign:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lorg/xml/sax/Attributes;)V
    .locals 11

    .prologue
    .line 1967
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->this$1:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1961
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->stroke:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->fill:Landroid/graphics/Paint;

    .line 1965
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->vAlign:I

    .line 1969
    move-object v5, v0

    move-object v6, v1

    const-string v7, "x"

    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->access$0(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->x:F

    .line 1970
    move-object v5, v0

    move-object v6, v1

    const-string v7, "y"

    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->access$0(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->y:F

    .line 1971
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    .line 1972
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->inText:Z

    .line 1974
    new-instance v5, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v3, v5

    .line 1975
    move-object v5, v1

    move-object v6, v3

    move-object v7, v1

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-static {v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->access$1(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1976
    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->fill:Landroid/graphics/Paint;

    .line 1977
    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->fill:Landroid/graphics/Paint;

    invoke-static {v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->access$2(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    move-result v5

    .line 1979
    :cond_0
    move-object v5, v1

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->access$3(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1980
    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->stroke:Landroid/graphics/Paint;

    .line 1981
    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->stroke:Landroid/graphics/Paint;

    invoke-static {v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->access$2(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    move-result v5

    .line 1984
    :cond_1
    const-string v5, "alignment-baseline"

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1985
    const-string v5, "middle"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1986
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->vAlign:I

    .line 1990
    :cond_2
    :goto_0
    return-void

    .line 1987
    :cond_3
    const-string v5, "top"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1988
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->vAlign:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 2016
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->inText:Z

    .line 2017
    return-void
.end method

.method public isInText()Z
    .locals 2

    .prologue
    .line 2012
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->inText:Z

    move v0, v1

    return v0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 2020
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->fill:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 2021
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->y:F

    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->fill:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2023
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->stroke:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    .line 2024
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->y:F

    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2027
    :cond_1
    return-void
.end method

.method public setText([CII)V
    .locals 15

    .prologue
    .line 1993
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->isInText()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1994
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 1995
    move-object v6, v0

    new-instance v7, Ljava/lang/String;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    iput-object v7, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    .line 2001
    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->vAlign:I

    if-lez v6, :cond_0

    .line 2002
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->stroke:Landroid/graphics/Paint;

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->fill:Landroid/graphics/Paint;

    :goto_1
    move-object v4, v6

    .line 2003
    new-instance v6, Landroid/graphics/Rect;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v6

    .line 2004
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2006
    move-object v6, v0

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    iget v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->y:F

    move-object v8, v0

    iget v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->vAlign:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    neg-int v8, v8

    :goto_2
    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->y:F

    .line 2009
    :cond_0
    return-void

    .line 1997
    :cond_1
    move-object v6, v0

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->svgText:Ljava/lang/String;

    goto :goto_0

    .line 2002
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->stroke:Landroid/graphics/Paint;

    goto :goto_1

    .line 2006
    :cond_3
    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_2
.end method
