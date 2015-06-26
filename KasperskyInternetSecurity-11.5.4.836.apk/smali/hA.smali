.class public final LhA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lhx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LhA;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, LhA;->b:Landroid/content/Context;

    .line 20
    iput-object p2, p0, LhA;->c:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, LhA;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, LhA;->c:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/kaspersky/components/statistics/popularity/Wlip;

    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/kaspersky/components/statistics/popularity/Wlip;-><init>(I)V

    .line 32
    iget-object v2, p0, LhA;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/kaspersky/components/statistics/popularity/Wlip;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;[B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "KAVSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LhA;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WLIP2 sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method
