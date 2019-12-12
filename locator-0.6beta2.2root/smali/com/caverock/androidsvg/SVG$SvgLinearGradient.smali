.class public Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
.super Lcom/caverock/androidsvg/SVG$GradientElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SvgLinearGradient"
.end annotation


# instance fields
.field public x1:Lcom/caverock/androidsvg/SVG$Length;

.field public x2:Lcom/caverock/androidsvg/SVG$Length;

.field public y1:Lcom/caverock/androidsvg/SVG$Length;

.field public y2:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1791
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    return-void
.end method
