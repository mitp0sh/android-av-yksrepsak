.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
.super Ljava/lang/Object;
.source "UnmarshallingContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public backup:Ljava/lang/Object;

.field public elementDefaultValue:Ljava/lang/String;

.field public intercepter:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;

.field public loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

.field public nil:Z

.field private numNsDecl:I

.field public prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

.field public receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

.field public target:Ljava/lang/Object;

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 1
    .param p2, "prev"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 279
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->nil:Z

    .line 280
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 281
    if-eqz p2, :cond_0

    .line 282
    iput-object p0, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 283
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    return-void
.end method

.method static synthetic access$400(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 198
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    return-object v0
.end method

.method static synthetic access$402(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 198
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    return-object p1
.end method

.method static synthetic access$500(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 198
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->push()V

    return-void
.end method

.method static synthetic access$600(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 198
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->pop()V

    return-void
.end method

.method static synthetic access$700(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .prologue
    .line 198
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->numNsDecl:I

    return v0
.end method

.method private pop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 295
    :cond_0
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->nil:Z

    .line 297
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 298
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->intercepter:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;

    .line 299
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->elementDefaultValue:Ljava/lang/String;

    .line 300
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    # setter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$202(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 302
    return-void
.end method

.method private push()V
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->allocateMoreStates()V
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 289
    .local v0, "n":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->nsLen:I
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)I

    move-result v1

    iput v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->numNsDecl:I

    .line 290
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    # setter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->current:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    invoke-static {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$202(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 291
    return-void
.end method


# virtual methods
.method public getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    return-object v0
.end method
