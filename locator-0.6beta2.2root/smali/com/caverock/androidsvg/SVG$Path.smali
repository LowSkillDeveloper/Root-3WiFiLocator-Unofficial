.class public Lcom/caverock/androidsvg/SVG$Path;
.super Lcom/caverock/androidsvg/SVG$GraphicsElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Path"
.end annotation


# instance fields
.field public d:Lcom/caverock/androidsvg/SVG$PathDefinition;

.field public pathLength:Ljava/lang/Float;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 1570
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method
