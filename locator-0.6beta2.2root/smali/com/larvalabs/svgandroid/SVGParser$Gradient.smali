.class Lcom/larvalabs/svgandroid/SVGParser$Gradient;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gradient"
.end annotation


# instance fields
.field colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field isLinear:Z

.field matrix:Landroid/graphics/Matrix;

.field positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field radius:F

.field x:F

.field x1:F

.field x2:F

.field xlink:Ljava/lang/String;

.field y:F

.field y1:F

.field y2:F


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 942
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    .line 943
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    .line 944
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    .line 936
    return-void
.end method

.method synthetic constructor <init>(Lcom/larvalabs/svgandroid/SVGParser$Gradient;)V
    .locals 3

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/larvalabs/svgandroid/SVGParser$Gradient;-><init>()V

    return-void
.end method


# virtual methods
.method public createChild(Lcom/larvalabs/svgandroid/SVGParser$Gradient;)Lcom/larvalabs/svgandroid/SVGParser$Gradient;
    .locals 8

    .prologue
    .line 947
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/larvalabs/svgandroid/SVGParser$Gradient;-><init>()V

    move-object v2, v4

    .line 948
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    .line 949
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->id:Ljava/lang/String;

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->xlink:Ljava/lang/String;

    .line 950
    move-object v4, v2

    move-object v5, v1

    iget-boolean v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->isLinear:Z

    iput-boolean v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->isLinear:Z

    .line 951
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x1:F

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x1:F

    .line 952
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x2:F

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x2:F

    .line 953
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y1:F

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y1:F

    .line 954
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y2:F

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y2:F

    .line 955
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x:F

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->x:F

    .line 956
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y:F

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->y:F

    .line 957
    move-object v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->radius:F

    iput v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->radius:F

    .line 958
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    .line 959
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    .line 960
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    .line 961
    move-object v4, v1

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_0

    .line 962
    move-object v4, v0

    iget-object v4, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_1

    .line 963
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    .line 970
    :cond_0
    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 965
    :cond_1
    new-instance v4, Landroid/graphics/Matrix;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v3, v4

    .line 966
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v4

    .line 967
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Lcom/larvalabs/svgandroid/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method
