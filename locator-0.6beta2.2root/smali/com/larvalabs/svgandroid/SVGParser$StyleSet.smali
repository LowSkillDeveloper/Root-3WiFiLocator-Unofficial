.class Lcom/larvalabs/svgandroid/SVGParser$StyleSet;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleSet"
.end annotation


# instance fields
.field styleMap:Ljava/util/HashMap;
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


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 977
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 975
    move-object v8, v0

    new-instance v9, Ljava/util/HashMap;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;->styleMap:Ljava/util/HashMap;

    .line 978
    move-object v8, v1

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 979
    move-object v8, v2

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v6, v9

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v5

    if-lt v8, v9, :cond_0

    .line 985
    return-void

    .line 979
    :cond_0
    move-object v8, v6

    move v9, v4

    aget-object v8, v8, v9

    move-object v3, v8

    .line 980
    move-object v8, v3

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 981
    move-object v8, v7

    array-length v8, v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 982
    move-object v8, v0

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;->styleMap:Ljava/util/HashMap;

    move-object v9, v7

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v10, v7

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 979
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/larvalabs/svgandroid/SVGParser$StyleSet;)V
    .locals 5

    .prologue
    .line 977
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 988
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$StyleSet;->styleMap:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method
