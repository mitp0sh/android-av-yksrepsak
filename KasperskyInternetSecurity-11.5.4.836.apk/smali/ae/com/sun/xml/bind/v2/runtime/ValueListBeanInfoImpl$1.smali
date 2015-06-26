.class Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl$1;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "ValueListBeanInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 78
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;

    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v4, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v4}, Lcom/sun/istack/FinalArrayList;-><init>()V

    .line 83
    .local v4, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "idx":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 87
    .local v2, "len":I
    :goto_0
    move v3, v1

    .line 88
    .local v3, "p":I
    :goto_1
    if-ge v3, v2, :cond_0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :cond_0
    invoke-interface {p2, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 92
    .local v5, "token":Ljava/lang/CharSequence;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 94
    :try_start_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;)Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v6

    invoke-interface {v6, v5}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    if-ne v3, v2, :cond_3

    .line 109
    :cond_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;

    # invokes: Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->toArray(Ljava/util/List;)Ljava/lang/Object;
    invoke-static {v6, v4}, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->access$100(Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 110
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl$1;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 102
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :cond_3
    :goto_2
    if-ge v3, v2, :cond_4

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 104
    :cond_4
    if-eq v3, v2, :cond_2

    .line 106
    move v1, v3

    .line 107
    goto :goto_0
.end method
