.class Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SVGHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;
    }
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field bounds:Landroid/graphics/RectF;

.field private boundsMode:Z

.field canvas:Landroid/graphics/Canvas;

.field dpi:F

.field fillPaint:Landroid/graphics/Paint;

.field fillPaintStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field fillSet:Z

.field fillSetStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

.field gradientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;"
        }
    .end annotation
.end field

.field gradientRefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/larvalabs/svgandroid/SVGParser$Gradient;",
            ">;"
        }
    .end annotation
.end field

.field groupOpacity:F

.field groupOpacityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hidden:Z

.field private hiddenLevel:I

.field idXml:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inDefsElement:Z

.field limits:Landroid/graphics/RectF;

.field picture:Landroid/graphics/Picture;

.field pushed:I

.field rect:Landroid/graphics/RectF;

.field replaceColor:Ljava/lang/Integer;

.field searchColor:Ljava/lang/Integer;

.field strokePaint:Landroid/graphics/Paint;

.field strokePaintStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field strokeSet:Z

.field strokeSetStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

.field whiteMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1492
    new-instance v0, Landroid/graphics/Matrix;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 1133
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Picture;)V
    .locals 10

    .prologue
    .line 1179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1136
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->idXml:Ljava/util/HashMap;

    .line 1142
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSet:Z

    .line 1143
    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaintStack:Ljava/util/Stack;

    .line 1144
    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSetStack:Ljava/util/Stack;

    .line 1147
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSet:Z

    .line 1148
    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaintStack:Ljava/util/Stack;

    .line 1149
    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSetStack:Ljava/util/Stack;

    .line 1151
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacity:F

    .line 1152
    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacityStack:Ljava/util/Stack;

    .line 1155
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    .line 1156
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->bounds:Landroid/graphics/RectF;

    .line 1157
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v7, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    .line 1159
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->searchColor:Ljava/lang/Integer;

    .line 1160
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    .line 1162
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->whiteMode:Z

    .line 1164
    move-object v2, v0

    sget v3, Lcom/larvalabs/svgandroid/SVGParser;->DPI:F

    iput v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->dpi:F

    .line 1166
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushed:I

    .line 1168
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    .line 1169
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hiddenLevel:I

    .line 1170
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->boundsMode:Z

    .line 1172
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    .line 1173
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    .line 1174
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    .line 1175
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    .line 1177
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->inDefsElement:Z

    .line 1180
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->picture:Landroid/graphics/Picture;

    .line 1181
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    .line 1182
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1183
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1184
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    .line 1185
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1186
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1187
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Picture;Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;)V
    .locals 5

    .prologue
    .line 1179
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;-><init>(Landroid/graphics/Picture;)V

    return-void
.end method

.method static synthetic access$0(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 8

    .prologue
    .line 2068
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$1(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z
    .locals 6

    .prologue
    .line 1219
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$2(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z
    .locals 6

    .prologue
    .line 1273
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doText(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$3(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z
    .locals 4

    .prologue
    .line 1291
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private convertUnits(Ljava/lang/String;Lorg/xml/sax/Attributes;F)Ljava/lang/Float;
    .locals 11

    .prologue
    .line 2079
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 2080
    move-object v7, v4

    if-nez v7, :cond_0

    .line 2081
    const/4 v7, 0x0

    move-object v0, v7

    .line 2112
    :goto_0
    return-object v0

    .line 2082
    :cond_0
    move-object v7, v4

    const-string v8, "px"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2083
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 2084
    :cond_1
    move-object v7, v4

    const-string v8, "pt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2085
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v3

    mul-float/2addr v7, v8

    const/high16 v8, 0x42900000    # 72.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 2086
    :cond_2
    move-object v7, v4

    const-string v8, "pc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2087
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v3

    mul-float/2addr v7, v8

    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 2088
    :cond_3
    move-object v7, v4

    const-string v8, "cm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2089
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v3

    mul-float/2addr v7, v8

    const v8, 0x40228f5c    # 2.54f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 2090
    :cond_4
    move-object v7, v4

    const-string v8, "mm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2091
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v3

    mul-float/2addr v7, v8

    const/high16 v8, 0x437e0000    # 254.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 2092
    :cond_5
    move-object v7, v4

    const-string v8, "in"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2093
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v3

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 2094
    :cond_6
    move-object v7, v4

    const-string v8, "em"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2095
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    move v5, v7

    .line 2096
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v5

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 2097
    :cond_7
    move-object v7, v4

    const-string v8, "ex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2098
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    move v5, v7

    .line 2099
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v5

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 2100
    :cond_8
    move-object v7, v4

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2101
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    move-object v5, v7

    .line 2103
    move-object v7, v1

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_9

    move-object v7, v1

    const-string v8, "width"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2104
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    move v6, v7

    .line 2110
    :goto_1
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v6

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 2105
    :cond_a
    move-object v7, v1

    const-string v8, "y"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_b

    move-object v7, v1

    const-string v8, "height"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2106
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 2108
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 2112
    :cond_d
    move-object v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method

.method private doBitmap(Landroid/graphics/Canvas;FFFF[B)V
    .locals 18

    .prologue
    .line 1516
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v6

    array-length v12, v12

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v7, v10

    .line 1517
    move-object v10, v7

    if-eqz v10, :cond_0

    .line 1519
    move-object v10, v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1520
    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, 0x3

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    move-object v8, v10

    .line 1521
    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move v12, v2

    move v13, v3

    move v14, v2

    move v15, v4

    add-float/2addr v14, v15

    move v15, v3

    move/from16 v16, v5

    add-float v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v9, v10

    .line 1522
    move-object v10, v1

    move-object v11, v9

    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move-result v10

    .line 1523
    move-object v10, v1

    move-object v11, v7

    const/4 v12, 0x0

    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1524
    move-object v10, v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 1526
    :cond_0
    return-void
.end method

.method private doColor(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V
    .locals 10

    .prologue
    .line 1388
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->replaceColor(I)I

    move-result v7

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    move v5, v7

    .line 1389
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1390
    move-object v7, v1

    const-string v8, "opacity"

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    move-object v6, v7

    .line 1391
    move-object v7, v6

    if-nez v7, :cond_0

    .line 1392
    move-object v7, v1

    move v8, v3

    if-eqz v8, :cond_2

    const-string v8, "fill-opacity"

    :goto_0
    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    move-object v6, v7

    .line 1394
    :cond_0
    move-object v7, v6

    if-nez v7, :cond_1

    .line 1395
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v6, v7

    .line 1398
    :cond_1
    move-object v7, v4

    const/high16 v8, 0x437f0000    # 255.0f

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1399
    return-void

    .line 1392
    :cond_2
    const-string v8, "stroke-opacity"

    goto :goto_0
.end method

.method private doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/larvalabs/svgandroid/SVGParser$Properties;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1220
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v6, "none"

    move-object v7, v1

    const-string v8, "display"

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1221
    const/4 v6, 0x0

    move v0, v6

    .line 1267
    :goto_0
    return v0

    .line 1223
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->whiteMode:Z

    if-eqz v6, :cond_1

    .line 1224
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v6

    .line 1225
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1226
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1228
    :cond_1
    move-object v6, v1

    const-string v7, "fill"

    invoke-virtual {v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1229
    move-object v6, v3

    if-eqz v6, :cond_6

    .line 1230
    move-object v6, v3

    const-string v7, "url(#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1232
    move-object v6, v3

    const-string v7, "url(#"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1233
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Shader;

    move-object v5, v6

    .line 1234
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 1235
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v6

    .line 1236
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1238
    :cond_2
    const-string v6, "SVG"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Didn\'t find shader, using black: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1239
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v6

    .line 1240
    move-object v6, v0

    move-object v7, v1

    const/high16 v8, -0x1000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doColor(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    .line 1241
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1243
    :cond_3
    move-object v6, v3

    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1244
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v6

    .line 1245
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1246
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1248
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v6

    .line 1249
    move-object v6, v1

    const-string v7, "fill"

    invoke-virtual {v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getColorValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    .line 1250
    move-object v6, v4

    if-eqz v6, :cond_5

    .line 1251
    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doColor(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    .line 1252
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1254
    :cond_5
    const-string v6, "SVG"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Unrecognized fill color, using black: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1255
    move-object v6, v0

    move-object v7, v1

    const/high16 v8, -0x1000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doColor(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    .line 1256
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1260
    :cond_6
    move-object v6, v0

    iget-boolean v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSet:Z

    if-eqz v6, :cond_8

    .line 1262
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1265
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v6

    .line 1266
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1267
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0
.end method

.method private doGradient(ZLorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$Gradient;
    .locals 12

    .prologue
    .line 1360
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Gradient;-><init>(Lcom/larvalabs/svgandroid/SVGParser$Gradient;)V

    move-object v3, v6

    .line 1361
    move-object v6, v3

    const-string v7, "id"

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    .line 1362
    move-object v6, v3

    move v7, v1

    iput-boolean v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->isLinear:Z

    .line 1363
    move v6, v1

    if-eqz v6, :cond_3

    .line 1364
    move-object v6, v3

    move-object v7, v0

    const-string v8, "x1"

    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x1:F

    .line 1365
    move-object v6, v3

    move-object v7, v0

    const-string v8, "x2"

    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x2:F

    .line 1366
    move-object v6, v3

    move-object v7, v0

    const-string v8, "y1"

    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y1:F

    .line 1367
    move-object v6, v3

    move-object v7, v0

    const-string v8, "y2"

    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y2:F

    .line 1373
    :goto_0
    const-string v6, "gradientTransform"

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1374
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 1375
    move-object v6, v3

    move-object v7, v4

    invoke-static {v7}, Lcom/larvalabs/svgandroid/SVGParser;->access$3(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v7

    iput-object v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    .line 1377
    :cond_0
    const-string v6, "href"

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1378
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 1379
    move-object v6, v5

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1380
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1382
    :cond_1
    move-object v6, v3

    move-object v7, v5

    iput-object v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->xlink:Ljava/lang/String;

    .line 1384
    :cond_2
    move-object v6, v3

    move-object v0, v6

    return-object v0

    .line 1369
    :cond_3
    move-object v6, v3

    move-object v7, v0

    const-string v8, "cx"

    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x:F

    .line 1370
    move-object v6, v3

    move-object v7, v0

    const-string v8, "cy"

    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y:F

    .line 1371
    move-object v6, v3

    move-object v7, v0

    const-string v8, "r"

    move-object v9, v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->radius:F

    goto :goto_0
.end method

.method private doLimits(FF)V
    .locals 5

    .prologue
    .line 1467
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1468
    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    move v4, v1

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 1470
    :cond_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 1471
    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    move v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 1473
    :cond_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 1474
    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    move v4, v2

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 1476
    :cond_2
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 1477
    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    move v4, v2

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 1479
    :cond_3
    return-void
.end method

.method private doLimits(FFFF)V
    .locals 9

    .prologue
    .line 1482
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1483
    move-object v5, v0

    move v6, v1

    move v7, v3

    add-float/2addr v6, v7

    move v7, v2

    move v8, v4

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1484
    return-void
.end method

.method private doLimits(Landroid/graphics/Path;)V
    .locals 5

    .prologue
    .line 1487
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1488
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v4}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1489
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1490
    return-void
.end method

.method private doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z
    .locals 13

    .prologue
    .line 1292
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-boolean v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->whiteMode:Z

    if-eqz v7, :cond_0

    .line 1294
    const/4 v7, 0x0

    move v0, v7

    .line 1354
    :goto_0
    return v0

    .line 1296
    :cond_0
    const-string v7, "none"

    move-object v8, v1

    const-string v9, "display"

    invoke-virtual {v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1297
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1301
    :cond_1
    move-object v7, v1

    const-string v8, "stroke-width"

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    move-object v2, v7

    .line 1302
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 1303
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1307
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    .line 1308
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1311
    :cond_3
    move-object v7, v1

    const-string v8, "stroke-linecap"

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1312
    const-string v7, "round"

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1313
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1320
    :cond_4
    :goto_1
    move-object v7, v1

    const-string v8, "stroke-linejoin"

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 1321
    const-string v7, "miter"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1322
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1329
    :cond_5
    :goto_2
    move-object v7, v0

    move-object v8, v1

    const-string v9, "stroke-dasharray"

    invoke-virtual {v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    const-string v10, "stroke-dashoffset"

    invoke-virtual {v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pathStyleHelper(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    move-object v7, v1

    const-string v8, "stroke"

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1332
    move-object v7, v5

    if-eqz v7, :cond_c

    .line 1333
    move-object v7, v5

    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1334
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1335
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1314
    :cond_6
    const-string v7, "square"

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1315
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 1316
    :cond_7
    const-string v7, "butt"

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1317
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 1323
    :cond_8
    const-string v7, "round"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1324
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    .line 1325
    :cond_9
    const-string v7, "bevel"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1326
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    .line 1337
    :cond_a
    move-object v7, v1

    const-string v8, "stroke"

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getColorValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, v7

    .line 1338
    move-object v7, v6

    if-eqz v7, :cond_b

    .line 1339
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doColor(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/lang/Integer;ZLandroid/graphics/Paint;)V

    .line 1340
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 1342
    :cond_b
    const-string v7, "SVG"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Unrecognized stroke color, using none: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1343
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1344
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1348
    :cond_c
    move-object v7, v0

    iget-boolean v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSet:Z

    if-eqz v7, :cond_e

    .line 1350
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1353
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1354
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method private doText(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z
    .locals 10

    .prologue
    .line 1274
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v5, "none"

    move-object v6, v1

    const-string v7, "display"

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1275
    const/4 v5, 0x0

    move v0, v5

    .line 1288
    :goto_0
    return v0

    .line 1277
    :cond_0
    move-object v5, v1

    const-string v6, "font-size"

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1278
    move-object v5, v2

    move-object v6, v0

    const-string v7, "font-size"

    move-object v8, v1

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1280
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->setTypeFace(Lorg/xml/sax/Attributes;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v3, v5

    .line 1281
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 1282
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 1284
    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getTextAlign(Lorg/xml/sax/Attributes;)Landroid/graphics/Paint$Align;

    move-result-object v5

    move-object v4, v5

    .line 1285
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 1286
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getTextAlign(Lorg/xml/sax/Attributes;)Landroid/graphics/Paint$Align;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1288
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method private getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 7

    .prologue
    .line 2065
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 9

    .prologue
    .line 2069
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->dpi:F

    invoke-direct {v5, v6, v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->convertUnits(Ljava/lang/String;Lorg/xml/sax/Attributes;F)Ljava/lang/Float;

    move-result-object v5

    move-object v4, v5

    .line 2070
    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v3

    :goto_0
    move-object v0, v5

    return-object v0

    :cond_0
    move-object v5, v4

    goto :goto_0
.end method

.method private getTextAlign(Lorg/xml/sax/Attributes;)Landroid/graphics/Paint$Align;
    .locals 5

    .prologue
    .line 2031
    move-object v0, p0

    move-object v1, p1

    const-string v3, "text-anchor"

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2032
    move-object v3, v2

    if-nez v3, :cond_0

    .line 2033
    const/4 v3, 0x0

    move-object v0, v3

    .line 2040
    :goto_0
    return-object v0

    .line 2035
    :cond_0
    const-string v3, "middle"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2036
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, v3

    goto :goto_0

    .line 2037
    :cond_1
    const-string v3, "end"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2038
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v0, v3

    goto :goto_0

    .line 2040
    :cond_2
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v0, v3

    goto :goto_0
.end method

.method private pathStyleHelper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 1419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v1

    if-nez v11, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1423
    :cond_0
    move-object v11, v1

    const-string v12, "none"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1424
    move-object v11, v0

    iget-object v11, v11, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v11

    .line 1425
    goto :goto_0

    .line 1428
    :cond_1
    new-instance v11, Ljava/util/StringTokenizer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    const-string v14, " ,"

    invoke-direct {v12, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v11

    .line 1429
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v11

    move v4, v11

    .line 1430
    move v11, v4

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    move v11, v4

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    :goto_1
    new-array v11, v11, [F

    move-object v5, v11

    .line 1431
    const/4 v11, 0x0

    move v6, v11

    .line 1432
    const/high16 v11, 0x3f800000    # 1.0f

    move v7, v11

    .line 1433
    const/4 v11, 0x0

    move v8, v11

    .line 1434
    :goto_2
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1440
    const/4 v11, 0x0

    move v9, v11

    :goto_3
    move v11, v8

    move-object v12, v5

    array-length v12, v12

    if-lt v11, v12, :cond_5

    .line 1444
    const/4 v11, 0x0

    move v9, v11

    .line 1445
    move-object v11, v2

    if-eqz v11, :cond_2

    .line 1447
    move-object v11, v2

    :try_start_0
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v12, v6

    rem-float/2addr v11, v12

    move v9, v11

    .line 1453
    :cond_2
    :goto_4
    move-object v11, v0

    iget-object v11, v11, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/DashPathEffect;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v5

    move v15, v9

    invoke-direct {v13, v14, v15}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v11

    .line 1454
    goto :goto_0

    .line 1430
    :cond_3
    move v11, v4

    goto :goto_1

    .line 1435
    :cond_4
    move-object v11, v5

    move v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v13, v3

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    move v14, v7

    invoke-static {v13, v14}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->toFloat(Ljava/lang/String;F)F

    move-result v13

    move/from16 v16, v13

    move/from16 v13, v16

    move/from16 v14, v16

    move v7, v14

    aput v13, v11, v12

    .line 1436
    move v11, v6

    move v12, v7

    add-float/2addr v11, v12

    move v6, v11

    goto :goto_2

    .line 1441
    :cond_5
    move v11, v6

    move-object v12, v5

    move v13, v8

    move-object v14, v5

    move v15, v9

    aget v14, v14, v15

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v12, v18

    move-object/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    aput v15, v13, v14

    add-float/2addr v11, v12

    move v6, v11

    .line 1440
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1448
    :catch_0
    move-exception v11

    move-object v10, v11

    goto :goto_4
.end method

.method private popTransform()V
    .locals 5

    .prologue
    .line 1510
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1512
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushed:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushed:I

    .line 1513
    return-void
.end method

.method private pushTransform(Lorg/xml/sax/Attributes;)V
    .locals 8

    .prologue
    .line 1496
    move-object v0, p0

    move-object v1, p1

    const-string v4, "transform"

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1497
    move-object v4, v2

    if-nez v4, :cond_0

    sget-object v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :goto_0
    move-object v3, v4

    .line 1498
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushed:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushed:I

    .line 1499
    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1505
    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1507
    return-void

    .line 1497
    :cond_0
    move-object v4, v2

    invoke-static {v4}, Lcom/larvalabs/svgandroid/SVGParser;->access$3(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v4

    goto :goto_0
.end method

.method private replaceColor(I)I
    .locals 9

    .prologue
    .line 1403
    move-object v0, p0

    move v1, p1

    move v2, v1

    const v3, 0xffffff

    and-int/2addr v2, v3

    move v1, v2

    .line 1404
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->searchColor:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->searchColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1405
    const-string v2, "SVG"

    const-string v3, "Replacing color: 0x%x->0x%x"

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

    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1406
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 1408
    :goto_0
    return v0

    :cond_0
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method private setTypeFace(Lorg/xml/sax/Attributes;)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    .line 2045
    move-object v0, p0

    move-object v1, p1

    const-string v7, "font-family"

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 2046
    const-string v7, "font-style"

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 2047
    const-string v7, "font-weight"

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 2049
    move-object v7, v2

    if-nez v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_0

    move-object v7, v4

    if-nez v7, :cond_0

    .line 2050
    const/4 v7, 0x0

    move-object v0, v7

    .line 2061
    :goto_0
    return-object v0

    .line 2052
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    .line 2053
    const-string v7, "italic"

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2054
    move v7, v5

    const/4 v8, 0x2

    or-int/lit8 v7, v7, 0x2

    move v5, v7

    .line 2056
    :cond_1
    const-string v7, "bold"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2057
    move v7, v5

    const/4 v8, 0x1

    or-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 2059
    :cond_2
    move-object v7, v2

    move v8, v5

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v6, v7

    .line 2061
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method

.method private showAttributes(Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1846
    move-object v0, p0

    move-object v1, p1

    const-string v4, ""

    move-object v2, v4

    .line 1847
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-interface {v5}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 1850
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 1848
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1847
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private showBounds(Ljava/lang/String;Landroid/graphics/Path;)V
    .locals 9

    .prologue
    .line 1839
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/graphics/RectF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v3, v4

    .line 1840
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1841
    const-string v4, "SVG"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " bounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1842
    return-void
.end method

.method private static toFloat(Ljava/lang/String;F)F
    .locals 5

    .prologue
    .line 1457
    move-object v0, p0

    move v1, p1

    move v4, v1

    move v2, v4

    .line 1459
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v2, v4

    .line 1463
    :goto_0
    move v4, v2

    move v0, v4

    return v0

    .line 1460
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 8

    .prologue
    .line 1856
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    if-eqz v4, :cond_0

    .line 1857
    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->setText([CII)V

    .line 1859
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 1217
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 1868
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v0

    iget-boolean v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->inDefsElement:Z

    if-eqz v7, :cond_1

    .line 1869
    move-object v7, v2

    const-string v8, "defs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1870
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->inDefsElement:Z

    .line 1954
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    move-object v7, v2

    const-string v8, "svg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1876
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->picture:Landroid/graphics/Picture;

    invoke-virtual {v7}, Landroid/graphics/Picture;->endRecording()V

    .line 1954
    :cond_2
    :goto_1
    goto :goto_0

    .line 1877
    :cond_3
    move-object v7, v0

    iget-boolean v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v7, :cond_5

    move-object v7, v2

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1878
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    if-eqz v7, :cond_4

    .line 1879
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->render(Landroid/graphics/Canvas;)V

    .line 1880
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    invoke-virtual {v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;->close()V

    .line 1882
    :cond_4
    move-object v7, v0

    invoke-direct {v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto :goto_1

    .line 1883
    :cond_5
    move-object v7, v2

    const-string v8, "linearGradient"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1884
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1885
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->xlink:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 1886
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->xlink:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-object v4, v7

    .line 1887
    move-object v7, v4

    if-eqz v7, :cond_6

    .line 1888
    move-object v7, v0

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    invoke-virtual {v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->createChild(Lcom/larvalabs/svgandroid/SVGParser$Gradient;)Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-result-object v8

    iput-object v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    .line 1891
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [I

    move-object v4, v7

    .line 1892
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-lt v7, v8, :cond_9

    .line 1895
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [F

    move-object v5, v7

    .line 1896
    const/4 v7, 0x0

    move v6, v7

    :goto_3
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-lt v7, v8, :cond_a

    .line 1899
    move-object v7, v4

    array-length v7, v7

    if-nez v7, :cond_7

    .line 1900
    const-string v7, "SVG"

    const-string v8, "missing colors in gradient"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1902
    :cond_7
    new-instance v7, Landroid/graphics/LinearGradient;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget v9, v9, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x1:F

    move-object v10, v0

    iget-object v10, v10, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget v10, v10, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y1:F

    move-object v11, v0

    iget-object v11, v11, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget v11, v11, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x2:F

    move-object v12, v0

    iget-object v12, v12, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget v12, v12, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y2:F

    move-object v13, v4

    move-object v14, v5

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v6, v7

    .line 1903
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v7, :cond_8

    .line 1904
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1906
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1907
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_1

    .line 1893
    :cond_9
    move-object v7, v4

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    .line 1892
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1897
    :cond_a
    move-object v7, v5

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v7, v8

    .line 1896
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1909
    :cond_b
    move-object v7, v2

    const-string v8, "radialGradient"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1910
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1911
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->xlink:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 1912
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->xlink:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-object v4, v7

    .line 1913
    move-object v7, v4

    if-eqz v7, :cond_c

    .line 1914
    move-object v7, v0

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    invoke-virtual {v8, v9}, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->createChild(Lcom/larvalabs/svgandroid/SVGParser$Gradient;)Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-result-object v8

    iput-object v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    .line 1918
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [I

    move-object v4, v7

    .line 1919
    const/4 v7, 0x0

    move v5, v7

    :goto_4
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-lt v7, v8, :cond_e

    .line 1922
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [F

    move-object v5, v7

    .line 1923
    const/4 v7, 0x0

    move v6, v7

    :goto_5
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-lt v7, v8, :cond_f

    .line 1926
    new-instance v7, Landroid/graphics/RadialGradient;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget v9, v9, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x:F

    move-object v10, v0

    iget-object v10, v10, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget v10, v10, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y:F

    move-object v11, v0

    iget-object v11, v11, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget v11, v11, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->radius:F

    move-object v12, v4

    move-object v13, v5

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v6, v7

    .line 1927
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v7, :cond_d

    .line 1928
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1930
    :cond_d
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1931
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_1

    .line 1920
    :cond_e
    move-object v7, v4

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    .line 1919
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1924
    :cond_f
    move-object v7, v5

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v9, v9, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v7, v8

    .line 1923
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1933
    :cond_10
    move-object v7, v2

    const-string v8, "g"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1934
    move-object v7, v0

    iget-boolean v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->boundsMode:Z

    if-eqz v7, :cond_11

    .line 1935
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->boundsMode:Z

    .line 1938
    :cond_11
    move-object v7, v0

    iget-boolean v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-eqz v7, :cond_12

    .line 1939
    move-object v7, v0

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hiddenLevel:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hiddenLevel:I

    .line 1941
    move-object v7, v0

    iget v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hiddenLevel:I

    if-nez v7, :cond_12

    .line 1942
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    .line 1946
    :cond_12
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1947
    move-object v7, v0

    invoke-direct {v7}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    .line 1948
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaintStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Paint;

    iput-object v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    .line 1949
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSetStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSet:Z

    .line 1950
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaintStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Paint;

    iput-object v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    .line 1951
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSetStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSet:Z

    .line 1952
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacityStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v7, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacity:F

    goto/16 :goto_1
.end method

.method public setColorSwap(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 1194
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->searchColor:Ljava/lang/Integer;

    .line 1195
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->replaceColor:Ljava/lang/Integer;

    .line 1196
    return-void
.end method

.method public setDpi(F)V
    .locals 4

    .prologue
    .line 1190
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->dpi:F

    .line 1191
    return-void
.end method

.method public setWhiteMode(Z)V
    .locals 4

    .prologue
    .line 1199
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->whiteMode:Z

    .line 1200
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 1205
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 24

    .prologue
    .line 1534
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSet:Z

    if-nez v15, :cond_0

    .line 1535
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1537
    :cond_0
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSet:Z

    if-nez v15, :cond_1

    .line 1538
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1541
    :cond_1
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->boundsMode:Z

    if-eqz v15, :cond_5

    .line 1542
    move-object v15, v3

    const-string v16, "rect"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1543
    move-object v15, v1

    const-string v16, "x"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v6, v15

    .line 1544
    move-object v15, v6

    if-nez v15, :cond_2

    .line 1545
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object v6, v15

    .line 1547
    :cond_2
    move-object v15, v1

    const-string v16, "y"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v7, v15

    .line 1548
    move-object v15, v7

    if-nez v15, :cond_3

    .line 1549
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object v7, v15

    .line 1551
    :cond_3
    move-object v15, v1

    const-string v16, "width"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v8, v15

    .line 1552
    move-object v15, v1

    const-string v16, "height"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v9, v15

    .line 1553
    move-object v15, v1

    new-instance v16, Landroid/graphics/RectF;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    add-float v20, v20, v21

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    add-float v21, v21, v22

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->bounds:Landroid/graphics/RectF;

    .line 1835
    :cond_4
    :goto_0
    return-void

    .line 1558
    :cond_5
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->inDefsElement:Z

    if-eqz v15, :cond_6

    .line 1559
    goto :goto_0

    .line 1562
    :cond_6
    move-object v15, v3

    const-string v16, "svg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1563
    move-object v15, v1

    const-string v16, "width"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v15, v15

    move v6, v15

    .line 1564
    move-object v15, v1

    const-string v16, "height"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v15, v15

    move v7, v15

    .line 1565
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->picture:Landroid/graphics/Picture;

    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    .line 1835
    :cond_7
    :goto_1
    goto :goto_0

    .line 1566
    :cond_8
    move-object v15, v3

    const-string v16, "defs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1567
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->inDefsElement:Z

    goto :goto_1

    .line 1568
    :cond_9
    move-object v15, v3

    const-string v16, "linearGradient"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1569
    move-object v15, v1

    move-object/from16 v16, v1

    const/16 v17, 0x1

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doGradient(ZLorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    goto :goto_1

    .line 1570
    :cond_a
    move-object v15, v3

    const-string v16, "radialGradient"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1571
    move-object v15, v1

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doGradient(ZLorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    goto :goto_1

    .line 1572
    :cond_b
    move-object v15, v3

    const-string v16, "stop"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1573
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    if-eqz v15, :cond_7

    .line 1574
    move-object v15, v1

    const-string v16, "offset"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move v6, v15

    .line 1575
    const-string v15, "style"

    move-object/from16 v16, v5

    invoke-static/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v15

    move-object v7, v15

    .line 1576
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;-><init>(Ljava/lang/String;Lcom/larvalabs/svgandroid/SVGParser$StyleSet;)V

    move-object v8, v15

    .line 1577
    move-object v15, v8

    const-string v16, "stop-color"

    invoke-virtual/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 1578
    const/high16 v15, -0x1000000

    move v10, v15

    .line 1579
    move-object v15, v9

    if-eqz v15, :cond_c

    .line 1580
    move-object v15, v9

    const-string v16, "#"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1581
    move-object v15, v9

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    move v10, v15

    .line 1586
    :cond_c
    :goto_2
    move-object v15, v1

    move/from16 v16, v10

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->replaceColor(I)I

    move-result v15

    move v10, v15

    .line 1587
    move-object v15, v8

    const-string v16, "stop-opacity"

    invoke-virtual/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v11, v15

    .line 1588
    move-object v15, v11

    if-eqz v15, :cond_e

    .line 1589
    move-object v15, v11

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move v12, v15

    .line 1590
    const/high16 v15, 0x437f0000    # 255.0f

    move/from16 v16, v12

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move v13, v15

    .line 1591
    move v15, v10

    move/from16 v16, v13

    const/16 v17, 0x18

    shl-int/lit8 v16, v16, 0x18

    or-int v15, v15, v16

    move v10, v15

    .line 1595
    :goto_3
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    move/from16 v16, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 1596
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradient:Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    goto/16 :goto_1

    .line 1583
    :cond_d
    move-object v15, v9

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    move v10, v15

    goto :goto_2

    .line 1593
    :cond_e
    move v15, v10

    const/high16 v16, -0x1000000

    or-int v15, v15, v16

    move v10, v15

    goto :goto_3

    .line 1598
    :cond_f
    move-object v15, v3

    const-string v16, "use"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 1599
    move-object v15, v5

    const-string v16, "xlink:href"

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 1600
    move-object v15, v5

    const-string v16, "transform"

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v7, v15

    .line 1601
    move-object v15, v5

    const-string v16, "x"

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v8, v15

    .line 1602
    move-object v15, v5

    const-string v16, "y"

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 1604
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v15

    .line 1605
    move-object v15, v10

    const-string v16, "<g"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1606
    move-object v15, v10

    const-string v16, " xmlns=\'http://www.w3.org/2000/svg\' xmlns:xlink=\'http://www.w3.org/1999/xlink\' version=\'1.1\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1607
    move-object v15, v7

    if-nez v15, :cond_10

    move-object v15, v8

    if-nez v15, :cond_10

    move-object v15, v9

    if-eqz v15, :cond_14

    .line 1608
    :cond_10
    move-object v15, v10

    const-string v16, " transform=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1609
    move-object v15, v7

    if-eqz v15, :cond_11

    .line 1610
    move-object v15, v10

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1612
    :cond_11
    move-object v15, v8

    if-nez v15, :cond_12

    move-object v15, v9

    if-eqz v15, :cond_13

    .line 1613
    :cond_12
    move-object v15, v10

    const-string v16, "translate("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1614
    move-object v15, v10

    move-object/from16 v16, v8

    if-eqz v16, :cond_15

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_4
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1615
    move-object v15, v10

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1616
    move-object v15, v10

    move-object/from16 v16, v9

    if-eqz v16, :cond_16

    move-object/from16 v16, v9

    invoke-static/range {v16 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1617
    move-object v15, v10

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1619
    :cond_13
    move-object v15, v10

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1622
    :cond_14
    const/4 v15, 0x0

    move v11, v15

    :goto_6
    move v15, v11

    move-object/from16 v16, v5

    invoke-interface/range {v16 .. v16}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_17

    .line 1636
    move-object v15, v10

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1638
    move-object v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->idXml:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1640
    move-object v15, v10

    const-string v16, "</g>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1644
    new-instance v15, Lorg/xml/sax/InputSource;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    new-instance v17, Ljava/io/StringReader;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v11, v15

    .line 1646
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v15

    move-object v12, v15

    .line 1647
    move-object v15, v12

    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v15

    move-object v13, v15

    .line 1648
    move-object v15, v13

    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v15

    move-object v14, v15

    .line 1649
    move-object v15, v14

    move-object/from16 v16, v1

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1650
    move-object v15, v14

    move-object/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1614
    :cond_15
    const-string v16, "0"

    goto/16 :goto_4

    .line 1616
    :cond_16
    const-string v16, "0"

    goto/16 :goto_5

    .line 1623
    :cond_17
    move-object v15, v5

    move/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 1624
    const-string v15, "x"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    const-string v15, "y"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    .line 1625
    const-string v15, "width"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    const-string v15, "height"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    .line 1626
    const-string v15, "xlink:href"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    const-string v15, "transform"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    .line 1628
    move-object v15, v10

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1629
    move-object v15, v10

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1630
    move-object v15, v10

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1631
    move-object v15, v10

    move-object/from16 v16, v5

    move/from16 v17, v11

    invoke-interface/range {v16 .. v17}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1632
    move-object v15, v10

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1622
    :cond_18
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 1651
    :catch_0
    move-exception v15

    move-object v12, v15

    .line 1652
    const-string v15, "SVG"

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1653
    move-object v15, v12

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1655
    :cond_19
    move-object v15, v3

    const-string v16, "g"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 1657
    const-string v15, "bounds"

    const-string v16, "id"

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v17}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1658
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->boundsMode:Z

    .line 1660
    :cond_1a
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-eqz v15, :cond_1b

    .line 1661
    move-object v15, v1

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hiddenLevel:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hiddenLevel:I

    .line 1665
    :cond_1b
    const-string v15, "none"

    const-string v16, "display"

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v17}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 1666
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_1c

    .line 1667
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    .line 1668
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hiddenLevel:I

    .line 1672
    :cond_1c
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1673
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v6, v15

    .line 1675
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaintStack:Ljava/util/Stack;

    new-instance v16, Landroid/graphics/Paint;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1676
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaintStack:Ljava/util/Stack;

    new-instance v16, Landroid/graphics/Paint;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1677
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSetStack:Ljava/util/Stack;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSet:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1678
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSetStack:Ljava/util/Stack;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSet:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1679
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacityStack:Ljava/util/Stack;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacity:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 1681
    move-object v15, v1

    const-string v16, "opacity"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v7, v15

    .line 1682
    move-object v15, v7

    if-eqz v15, :cond_1d

    .line 1683
    move-object v15, v1

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacity:F

    move/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->groupOpacity:F

    .line 1686
    :cond_1d
    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doText(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    move-result v15

    .line 1687
    move-object v15, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doText(Lorg/xml/sax/Attributes;Landroid/graphics/Paint;)Z

    move-result v15

    .line 1688
    move-object v15, v1

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v15

    .line 1689
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v15

    .line 1691
    move-object v15, v1

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSet:Z

    move/from16 v16, v0

    move-object/from16 v17, v6

    const-string v18, "fill"

    invoke-virtual/range {v17 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1e

    const/16 v17, 0x1

    :goto_7
    or-int v16, v16, v17

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillSet:Z

    .line 1692
    move-object v15, v1

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSet:Z

    move/from16 v16, v0

    move-object/from16 v17, v6

    const-string v18, "stroke"

    invoke-virtual/range {v17 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1f

    const/16 v17, 0x1

    :goto_8
    or-int v16, v16, v17

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokeSet:Z

    goto/16 :goto_1

    .line 1691
    :cond_1e
    const/16 v17, 0x0

    goto :goto_7

    .line 1692
    :cond_1f
    const/16 v17, 0x0

    goto :goto_8

    .line 1693
    :cond_20
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_25

    move-object v15, v3

    const-string v16, "rect"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 1694
    move-object v15, v1

    const-string v16, "x"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v6, v15

    .line 1695
    move-object v15, v1

    const-string v16, "y"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v7, v15

    .line 1696
    move-object v15, v1

    const-string v16, "width"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v8, v15

    .line 1697
    move-object v15, v1

    const-string v16, "height"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v9, v15

    .line 1698
    move-object v15, v1

    const-string v16, "rx"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v10, v15

    .line 1699
    move-object v15, v1

    const-string v16, "ry"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v11, v15

    .line 1700
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1701
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v12, v15

    .line 1702
    move-object v15, v1

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 1703
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    invoke-direct/range {v15 .. v19}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FFFF)V

    .line 1704
    move-object v15, v10

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_23

    move-object v15, v11

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_23

    .line 1705
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1711
    :cond_21
    :goto_9
    move-object v15, v1

    move-object/from16 v16, v12

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v15

    if-eqz v15, :cond_22

    .line 1712
    move-object v15, v10

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_24

    move-object v15, v11

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_24

    .line 1713
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1719
    :cond_22
    :goto_a
    move-object v15, v1

    invoke-direct {v15}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto/16 :goto_1

    .line 1707
    :cond_23
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1708
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 1715
    :cond_24
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1716
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 1720
    :cond_25
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_26

    move-object v15, v3

    const-string v16, "image"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    .line 1722
    const-string v15, "href"

    move-object/from16 v16, v5

    invoke-static/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 1723
    move-object v15, v6

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v15, v6

    const-string v16, "base64"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_7

    .line 1724
    move-object v15, v6

    move-object/from16 v16, v6

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v7, v15

    .line 1725
    move-object v15, v1

    const-string v16, "x"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v8, v15

    .line 1726
    move-object v15, v1

    const-string v16, "y"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v9, v15

    .line 1727
    move-object v15, v1

    const-string v16, "width"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v10, v15

    .line 1728
    move-object v15, v1

    const-string v16, "height"

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    move-object v11, v15

    .line 1729
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1730
    move-object v15, v1

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    invoke-direct/range {v15 .. v19}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FFFF)V

    .line 1731
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move-object/from16 v21, v7

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v21

    invoke-direct/range {v15 .. v21}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doBitmap(Landroid/graphics/Canvas;FFFF[B)V

    .line 1732
    move-object v15, v1

    invoke-direct {v15}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto/16 :goto_1

    .line 1734
    :cond_26
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_27

    move-object v15, v3

    const-string v16, "line"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    .line 1735
    move-object v15, v1

    const-string v16, "x1"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v6, v15

    .line 1736
    move-object v15, v1

    const-string v16, "x2"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v7, v15

    .line 1737
    move-object v15, v1

    const-string v16, "y1"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v8, v15

    .line 1738
    move-object v15, v1

    const-string v16, "y2"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v9, v15

    .line 1739
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v10, v15

    .line 1740
    move-object v15, v1

    move-object/from16 v16, v10

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1741
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1742
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1743
    move-object v15, v1

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1744
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1745
    move-object v15, v1

    invoke-direct {v15}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto/16 :goto_1

    .line 1747
    :cond_27
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_2a

    move-object v15, v3

    const-string v16, "circle"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2a

    .line 1748
    move-object v15, v1

    const-string v16, "cx"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v6, v15

    .line 1749
    move-object v15, v1

    const-string v16, "cy"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v7, v15

    .line 1750
    move-object v15, v1

    const-string v16, "r"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v8, v15

    .line 1751
    move-object v15, v6

    if-eqz v15, :cond_7

    move-object v15, v7

    if-eqz v15, :cond_7

    move-object v15, v8

    if-eqz v15, :cond_7

    .line 1752
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1753
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v9, v15

    .line 1754
    move-object v15, v1

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v15

    if-eqz v15, :cond_28

    .line 1755
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1756
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    add-float v16, v16, v17

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1757
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1759
    :cond_28
    move-object v15, v1

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 1760
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1762
    :cond_29
    move-object v15, v1

    invoke-direct {v15}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto/16 :goto_1

    .line 1764
    :cond_2a
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_2d

    move-object v15, v3

    const-string v16, "ellipse"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2d

    .line 1765
    move-object v15, v1

    const-string v16, "cx"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v6, v15

    .line 1766
    move-object v15, v1

    const-string v16, "cy"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v7, v15

    .line 1767
    move-object v15, v1

    const-string v16, "rx"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v8, v15

    .line 1768
    move-object v15, v1

    const-string v16, "ry"

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v15

    move-object v9, v15

    .line 1769
    move-object v15, v6

    if-eqz v15, :cond_7

    move-object v15, v7

    if-eqz v15, :cond_7

    move-object v15, v8

    if-eqz v15, :cond_7

    move-object v15, v9

    if-eqz v15, :cond_7

    .line 1770
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1771
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v10, v15

    .line 1772
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v17, v17, v18

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1773
    move-object v15, v1

    move-object/from16 v16, v10

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 1774
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1775
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    add-float v16, v16, v17

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(FF)V

    .line 1776
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1778
    :cond_2b
    move-object v15, v1

    move-object/from16 v16, v10

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v15

    if-eqz v15, :cond_2c

    .line 1779
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1781
    :cond_2c
    move-object v15, v1

    invoke-direct {v15}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto/16 :goto_1

    .line 1783
    :cond_2d
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_33

    move-object v15, v3

    const-string v16, "polygon"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2e

    move-object v15, v3

    const-string v16, "polyline"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    .line 1784
    :cond_2e
    const-string v15, "points"

    move-object/from16 v16, v5

    invoke-static/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$4(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$NumberParse;

    move-result-object v15

    move-object v6, v15

    .line 1785
    move-object v15, v6

    if-eqz v15, :cond_7

    .line 1786
    new-instance v15, Landroid/graphics/Path;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    move-object v7, v15

    .line 1787
    move-object v15, v6

    invoke-static {v15}, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v15

    move-object v8, v15

    .line 1788
    move-object v15, v8

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 1789
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1790
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v9, v15

    .line 1791
    move-object v15, v7

    move-object/from16 v16, v8

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v17, v8

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1792
    const/4 v15, 0x2

    move v10, v15

    :goto_b
    move v15, v10

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_32

    .line 1798
    move-object v15, v3

    const-string v16, "polygon"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    .line 1799
    move-object v15, v7

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 1801
    :cond_2f
    move-object v15, v1

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v15

    if-eqz v15, :cond_30

    .line 1802
    move-object v15, v1

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(Landroid/graphics/Path;)V

    .line 1805
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1807
    :cond_30
    move-object v15, v1

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v15

    if-eqz v15, :cond_31

    .line 1809
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1811
    :cond_31
    move-object v15, v1

    invoke-direct {v15}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto/16 :goto_1

    .line 1793
    :cond_32
    move-object v15, v8

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move v11, v15

    .line 1794
    move-object v15, v8

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move v12, v15

    .line 1795
    move-object v15, v7

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1792
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_b

    .line 1814
    :cond_33
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_36

    move-object v15, v3

    const-string v16, "path"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_36

    .line 1815
    const-string v15, "d"

    move-object/from16 v16, v5

    invoke-static/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser;->access$1(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/larvalabs/svgandroid/SVGParser;->access$5(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v15

    move-object v6, v15

    .line 1816
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1817
    new-instance v15, Lcom/larvalabs/svgandroid/SVGParser$Properties;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v5

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/larvalabs/svgandroid/SVGParser$Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$Properties;)V

    move-object v7, v15

    .line 1818
    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->gradientMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doFill(Lcom/larvalabs/svgandroid/SVGParser$Properties;Ljava/util/HashMap;)Z

    move-result v15

    if-eqz v15, :cond_34

    .line 1820
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doLimits(Landroid/graphics/Path;)V

    .line 1822
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1824
    :cond_34
    move-object v15, v1

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->doStroke(Lcom/larvalabs/svgandroid/SVGParser$Properties;)Z

    move-result v15

    if-eqz v15, :cond_35

    .line 1826
    move-object v15, v1

    iget-object v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1828
    :cond_35
    move-object v15, v1

    invoke-direct {v15}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->popTransform()V

    goto/16 :goto_1

    .line 1829
    :cond_36
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_37

    move-object v15, v3

    const-string v16, "text"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_37

    .line 1830
    move-object v15, v1

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1831
    move-object v15, v1

    new-instance v16, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    invoke-direct/range {v17 .. v19}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;-><init>(Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;Lorg/xml/sax/Attributes;)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->text:Lcom/larvalabs/svgandroid/SVGParser$SVGHandler$SvgText;

    goto/16 :goto_1

    .line 1832
    :cond_37
    move-object v15, v1

    iget-boolean v15, v15, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->hidden:Z

    if-nez v15, :cond_7

    .line 1833
    const-string v15, "SVG"

    const-string v16, "Unrecognized tag: %s (%s)"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const/16 v19, 0x0

    move-object/from16 v20, v3

    aput-object v20, v18, v19

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const/16 v19, 0x1

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v21}, Lcom/larvalabs/svgandroid/SVGParser$SVGHandler;->showAttributes(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_1
.end method
