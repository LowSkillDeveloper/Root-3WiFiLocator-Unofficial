.class public Lcom/caverock/androidsvg/SVG$ClipPath;
.super Lcom/caverock/androidsvg/SVG$Group;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClipPath"
.end annotation


# instance fields
.field public clipPathUnitsAreUser:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1810
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    return-void
.end method
