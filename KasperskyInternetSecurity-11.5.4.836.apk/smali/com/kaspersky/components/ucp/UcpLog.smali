.class public Lcom/kaspersky/components/ucp/UcpLog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/kaspersky/components/ucp/UcpLog;->init()V

    .line 113
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/kaspersky/components/ucp/UcpLog;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native init()V
.end method
