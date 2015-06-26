.class public final Lla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private synthetic a:Lcom/kms/antispam/AntiSpamStorage;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/AntiSpamStorage;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lla;->a:Lcom/kms/antispam/AntiSpamStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/kms/antispam/AntiSpamItem;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lla;->a()Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    return-object v0
.end method
