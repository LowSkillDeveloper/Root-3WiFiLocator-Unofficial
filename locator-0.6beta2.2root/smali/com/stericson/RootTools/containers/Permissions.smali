.class public Lcom/stericson/RootTools/containers/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# instance fields
.field group:Ljava/lang/String;

.field other:Ljava/lang/String;

.field permissions:I

.field symlink:Ljava/lang/String;

.field type:Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getGroupPermissions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getOtherPermissions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPermissions()I
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/stericson/RootTools/containers/Permissions;->permissions:I

    move v0, v1

    return v0
.end method

.method public getSymlink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->symlink:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->type:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getUserPermissions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setGroupPermissions(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setOtherPermissions(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPermissions(I)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/stericson/RootTools/containers/Permissions;->permissions:I

    .line 67
    return-void
.end method

.method public setSymlink(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->symlink:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->type:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setUserPermissions(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    .line 71
    return-void
.end method
