.class public abstract LuO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static transient a:LuO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()LuO;
    .locals 1

    .prologue
    .line 15
    sget-object v0, LuO;->a:LuO;

    if-nez v0, :cond_0

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Lcom/kms/privacyprotection/AutoSyncUtilsSDKnew;

    invoke-direct {v0}, Lcom/kms/privacyprotection/AutoSyncUtilsSDKnew;-><init>()V

    sput-object v0, LuO;->a:LuO;

    .line 31
    :cond_0
    :goto_0
    sget-object v0, LuO;->a:LuO;

    return-object v0

    .line 21
    :pswitch_0
    new-instance v0, LuP;

    invoke-direct {v0}, LuP;-><init>()V

    sput-object v0, LuO;->a:LuO;

    goto :goto_0

    .line 24
    :pswitch_1
    new-instance v0, LuQ;

    invoke-direct {v0}, LuQ;-><init>()V

    sput-object v0, LuO;->a:LuO;

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract getCurrentAutoSyncState(Landroid/content/Context;)Z
.end method

.method public abstract toggleAutoSync(Landroid/content/Context;Z)V
.end method
