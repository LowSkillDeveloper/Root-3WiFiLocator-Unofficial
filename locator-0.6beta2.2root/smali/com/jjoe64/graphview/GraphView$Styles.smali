.class final Lcom/jjoe64/graphview/GraphView$Styles;
.super Ljava/lang/Object;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Styles"
.end annotation


# instance fields
.field titleColor:I

.field titleTextSize:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jjoe64/graphview/GraphView$1;)V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/jjoe64/graphview/GraphView$Styles;-><init>()V

    return-void
.end method
