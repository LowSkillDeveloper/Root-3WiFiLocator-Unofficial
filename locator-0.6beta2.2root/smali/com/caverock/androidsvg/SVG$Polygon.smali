.class public Lcom/caverock/androidsvg/SVG$Polygon;
.super Lcom/caverock/androidsvg/SVG$PolyLine;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Polygon"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1620
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    return-void
.end method
