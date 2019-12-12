.class public final enum Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
.super Ljava/lang/Enum;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AxisBoundsStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

.field public static final enum AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

.field public static final enum FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

.field public static final enum INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

.field public static final enum READJUST_AFTER_SCALE:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 260
    new-instance v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INITIAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 266
    new-instance v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "AUTO_ADJUSTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 273
    new-instance v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "READJUST_AFTER_SCALE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->READJUST_AFTER_SCALE:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 279
    new-instance v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FIX"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->READJUST_AFTER_SCALE:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    aput-object v3, v1, v2

    sput-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->$VALUES:[Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    const-class v1, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->$VALUES:[Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    return-object v0
.end method
