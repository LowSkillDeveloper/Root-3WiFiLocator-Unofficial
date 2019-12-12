.class public Lcom/caverock/androidsvg/CSSParser$Selector;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Selector"
.end annotation


# instance fields
.field public selector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            ">;"
        }
    .end annotation
.end field

.field public specificity:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 226
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    .line 227
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 224
    return-void
.end method


# virtual methods
.method public add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v2, :cond_0

    .line 232
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    .line 233
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 234
    return-void
.end method

.method public addedAttributeOrPseudo()V
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    const/16 v3, 0x64

    add-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 260
    return-void
.end method

.method public addedElement()V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 265
    return-void
.end method

.method public addedIdAttribute()V
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    const/16 v3, 0x2710

    add-int/lit16 v2, v2, 0x2710

    iput v2, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 255
    return-void
.end method

.method public get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v0, v2

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 270
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 271
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->selector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    move-object v4, v1

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 271
    :cond_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v2, v4

    .line 272
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method
