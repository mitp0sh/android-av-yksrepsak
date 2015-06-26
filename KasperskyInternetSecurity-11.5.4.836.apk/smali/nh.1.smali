.class public final Lnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private synthetic a:Lcom/kms/free/antispam/AntiSpamStorage;


# direct methods
.method public constructor <init>(Lcom/kms/free/antispam/AntiSpamStorage;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lnh;->a:Lcom/kms/free/antispam/AntiSpamStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/kms/free/antispam/AntiSpamItem;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lnh;->a()Lcom/kms/free/antispam/AntiSpamItem;

    move-result-object v0

    return-object v0
.end method
