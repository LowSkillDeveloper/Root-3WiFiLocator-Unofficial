.class public Lcom/caverock/androidsvg/CSSParser$Ruleset;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ruleset"
.end annotation


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 152
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method public add(Lcom/caverock/androidsvg/CSSParser$Rule;)V
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v4, :cond_0

    .line 158
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 159
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 167
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 168
    :goto_1
    return-void

    .line 161
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/CSSParser$Rule;

    move-object v3, v4

    .line 162
    move-object v4, v3

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    move-object v5, v1

    iget-object v5, v5, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v5, v5, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    if-le v4, v5, :cond_2

    .line 163
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    move v5, v2

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    goto :goto_1

    .line 159
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .locals 9

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v4, :cond_0

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v4, :cond_1

    .line 175
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    iget-object v7, v7, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 176
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_1
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 179
    goto :goto_0

    .line 176
    :cond_2
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/CSSParser$Rule;

    move-object v2, v4

    .line 177
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method public getRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 194
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v4, :cond_0

    .line 195
    const-string v4, ""

    move-object v0, v4

    .line 199
    :goto_0
    return-object v0

    .line 196
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 197
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    :goto_1
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 197
    :cond_1
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/CSSParser$Rule;

    move-object v2, v4

    .line 198
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/CSSParser$Rule;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1
.end method
