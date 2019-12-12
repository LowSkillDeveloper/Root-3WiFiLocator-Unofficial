.class public Lcom/caverock/androidsvg/SVG$SvgElement;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SvgElement"
.end annotation


# instance fields
.field public boundingBox:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 1400
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    .line 1402
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1400
    return-void
.end method
