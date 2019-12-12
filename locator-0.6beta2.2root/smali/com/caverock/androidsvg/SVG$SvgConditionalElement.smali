.class public Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SvgConditionalElement"
.end annotation


# instance fields
.field public requiredExtensions:Ljava/lang/String;

.field public requiredFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requiredFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requiredFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public systemLanguage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 1423
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    .line 1425
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFeatures:Ljava/util/Set;

    .line 1426
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredExtensions:Ljava/lang/String;

    .line 1427
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->systemLanguage:Ljava/util/Set;

    .line 1428
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFormats:Ljava/util/Set;

    .line 1429
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFonts:Ljava/util/Set;

    .line 1423
    return-void
.end method


# virtual methods
.method public getRequiredExtensions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1438
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredExtensions:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getRequiredFeatures()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1434
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFeatures:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public getRequiredFonts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1450
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFonts:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public getRequiredFormats()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFormats:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemLanguage()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1442
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->systemLanguage:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public setRequiredExtensions(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1436
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredExtensions:Ljava/lang/String;

    return-void
.end method

.method public setRequiredFeatures(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1432
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFeatures:Ljava/util/Set;

    return-void
.end method

.method public setRequiredFonts(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1448
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFonts:Ljava/util/Set;

    return-void
.end method

.method public setRequiredFormats(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1444
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->requiredFormats:Ljava/util/Set;

    return-void
.end method

.method public setSystemLanguage(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->systemLanguage:Ljava/util/Set;

    return-void
.end method
