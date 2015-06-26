.class public Lhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:LiH;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lhx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhx;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LiH;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lhx;->b:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lhx;->c:LiH;

    .line 25
    iput-object p3, p0, Lhx;->d:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 34
    :try_start_0
    iget-object v1, p0, Lhx;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lhx;->d:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 35
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v3}, Lcom/kaspersky/components/statistics/popularity/Wlips;->getApkMd5(Ljava/lang/String;)[B

    move-result-object v3

    .line 37
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/kaspersky/components/statistics/popularity/Wlips;->getDexMd5(Ljava/lang/String;)[B

    move-result-object v2

    .line 38
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v4, Lcom/kaspersky/components/statistics/popularity/Wlip;

    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/kaspersky/components/statistics/popularity/Wlip;-><init>(I)V

    .line 46
    iget-object v5, p0, Lhx;->b:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3, v2}, Lcom/kaspersky/components/statistics/popularity/Wlip;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;[B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "KAVSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhx;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WLIP1 sent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2
    iget-object v1, p0, Lhx;->c:LiH;

    invoke-interface {v1}, LiH;->c()[B

    move-result-object v1

    .line 55
    if-nez v1, :cond_4

    .line 56
    :goto_1
    add-int/lit8 v4, v0, 0x20

    new-array v4, v4, [B

    .line 57
    if-eqz v1, :cond_3

    .line 58
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_3
    const/4 v1, 0x0

    const/16 v5, 0x10

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x10

    const/16 v3, 0x10

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v0, p0, Lhx;->c:LiH;

    invoke-interface {v0, v4}, LiH;->a([B)V

    .line 63
    iget-object v0, p0, Lhx;->c:LiH;

    invoke-interface {v0}, LiH;->e()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0

    .line 55
    :cond_4
    array-length v0, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
