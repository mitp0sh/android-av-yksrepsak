.class final LuZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbR;


# instance fields
.field private synthetic a:LuY;


# direct methods
.method constructor <init>(LuY;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, LuZ;->a:LuY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LbS;)V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ChangePrivacyProtectionMode:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 35
    return-void
.end method
