.class Lcom/larvalabs/svgandroid/SVGParser$NumberParse;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberParse"
.end annotation


# instance fields
.field private nextCmd:I

.field private numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 920
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->numbers:Ljava/util/ArrayList;

    .line 921
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->nextCmd:I

    .line 922
    return-void
.end method

.method static synthetic access$0(Lcom/larvalabs/svgandroid/SVGParser$NumberParse;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->numbers:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getNextCmd()I
    .locals 2

    .prologue
    .line 926
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->nextCmd:I

    move v0, v1

    return v0
.end method

.method public getNumber(I)F
    .locals 4

    .prologue
    .line 931
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$NumberParse;->numbers:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v0, v2

    return v0
.end method
